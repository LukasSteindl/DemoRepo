CREATE TABLE [dbo].[Test] (
    [id]            INT               IDENTITY (1, 1) NOT NULL,
    [x]             CHAR (10)         NULL,
    [Beruf]         NCHAR (10) SPARSE NULL,
    [Beruf2]         NCHAR (10) SPARSE NULL,
    [Vorerkrankung] NCHAR (10) SPARSE NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20210302-102542]
    ON [dbo].[Test]([Beruf] ASC) WHERE ([Beruf] IS NOT NULL);

