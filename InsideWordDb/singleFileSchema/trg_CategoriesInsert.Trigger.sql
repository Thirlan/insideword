USE [insideWordDb]
GO
/****** Object:  Trigger [trg_CategoriesInsert]    Script Date: 06/04/2011 10:41:43 ******/
DROP TRIGGER [insideWordDb].[trg_CategoriesInsert]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [insideWordDb].[trg_CategoriesInsert] ON [insideWordDb].[Categories] FOR INSERT
AS
BEGIN
    DECLARE @numrows int
    SET @numrows = @@ROWCOUNT

    if @numrows > 1
    BEGIN
        RAISERROR('Only single row insertion is supported', 16, 1)
        ROLLBACK TRAN
    END
    ELSE
    BEGIN
        UPDATE
            C
        SET
            HierarchyLevel    =
            CASE
                WHEN C.ParentCategoryId IS NULL THEN 0
                ELSE Parent.HierarchyLevel + 1
            END,
            FullPath =
            CASE
                WHEN C.ParentCategoryId IS NULL THEN '.'
                ELSE Parent.FullPath
            END + CAST(C.CategoryId AS varchar(10)) + '.'
            FROM
                Categories AS C
            INNER JOIN
                inserted AS I ON I.CategoryId = C.CategoryId
            LEFT OUTER JOIN
                Categories AS Parent ON Parent.CategoryId = C.ParentCategoryId
    END
END
GO
