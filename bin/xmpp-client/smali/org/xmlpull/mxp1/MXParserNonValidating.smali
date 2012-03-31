.class public Lorg/xmlpull/mxp1/MXParserNonValidating;
.super Lorg/xmlpull/mxp1/MXParserCachingStrings;
.source "MXParserNonValidating.java"


# instance fields
.field private processDocDecl:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 33
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->processDocDecl:Z

    .line 36
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected lookuEntityReplacement(I)[C
    .locals 8
    .parameter "entitNameLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->allStringsInterned:Z

    if-nez v4, :cond_6

    .line 46
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->buf:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    iget v6, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posEnd:I

    iget v7, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    sub-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lorg/xmlpull/mxp1/MXParserNonValidating;->fastHash([CII)I

    move-result v1

    .line 47
    .local v1, hash:I
    iget v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityEnd:I

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_1

    .line 74
    .end local v1           #hash:I
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 48
    .restart local v1       #hash:I
    :cond_1
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityNameHash:[I

    aget v4, v4, v2

    if-ne v1, v4, :cond_4

    .line 49
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityNameBuf:[[C

    aget-object v4, v4, v2

    array-length v4, v4

    if-ne p1, v4, :cond_4

    .line 50
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityNameBuf:[[C

    aget-object v0, v4, v2

    .line 51
    .local v0, entityBuf:[C
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-lt v3, p1, :cond_3

    .line 56
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    if-eqz v4, :cond_2

    .line 57
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityReplacement:[Ljava/lang/String;

    aget-object v4, v4, v2

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->text:Ljava/lang/String;

    .line 59
    :cond_2
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityReplacementBuf:[[C

    aget-object v4, v4, v2

    goto :goto_1

    .line 52
    :cond_3
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->buf:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    add-int/2addr v5, v3

    aget-char v4, v4, v5

    aget-char v5, v0, v3

    if-eq v4, v5, :cond_5

    .line 47
    .end local v0           #entityBuf:[C
    .end local v3           #j:I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 51
    .restart local v0       #entityBuf:[C
    .restart local v3       #j:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 63
    .end local v0           #entityBuf:[C
    .end local v1           #hash:I
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_6
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->buf:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    iget v6, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posEnd:I

    iget v7, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v4, v5, v6}, Lorg/xmlpull/mxp1/MXParserNonValidating;->newString([CII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityRefName:Ljava/lang/String;

    .line 64
    iget v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityEnd:I

    add-int/lit8 v2, v4, -0x1

    .restart local v2       #i:I
    :goto_3
    if-ltz v2, :cond_0

    .line 66
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityRefName:Ljava/lang/String;

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityName:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-ne v4, v5, :cond_8

    .line 67
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    if-eqz v4, :cond_7

    .line 68
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityReplacement:[Ljava/lang/String;

    aget-object v4, v4, v2

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->text:Ljava/lang/String;

    .line 70
    :cond_7
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityReplacementBuf:[[C

    aget-object v4, v4, v2

    goto :goto_1

    .line 64
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method protected more()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-super {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->more()C

    move-result v0

    return v0
.end method

.method protected parseDocdecl()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x50

    .line 86
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    .line 89
    .local v1, oldTokenize:Z
    :try_start_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v0

    .line 90
    .local v0, ch:C
    const/16 v2, 0x4f

    if-eq v0, v2, :cond_0

    .line 91
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "expected <!DOCTYPE"

    .line 92
    const/4 v4, 0x0

    .line 91
    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v0           #ch:C
    :catchall_0
    move-exception v2

    .line 144
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    .line 145
    throw v2

    .line 94
    .restart local v0       #ch:C
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v0

    .line 95
    const/16 v2, 0x43

    if-eq v0, v2, :cond_1

    .line 96
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "expected <!DOCTYPE"

    .line 97
    const/4 v4, 0x0

    .line 96
    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 99
    :cond_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v0

    .line 100
    const/16 v2, 0x54

    if-eq v0, v2, :cond_2

    .line 101
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "expected <!DOCTYPE"

    .line 102
    const/4 v4, 0x0

    .line 101
    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 104
    :cond_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v0

    .line 105
    const/16 v2, 0x59

    if-eq v0, v2, :cond_3

    .line 106
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "expected <!DOCTYPE"

    .line 107
    const/4 v4, 0x0

    .line 106
    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 109
    :cond_3
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v0

    .line 110
    if-eq v0, v3, :cond_4

    .line 111
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "expected <!DOCTYPE"

    .line 112
    const/4 v4, 0x0

    .line 111
    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 114
    :cond_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v0

    .line 115
    const/16 v2, 0x45

    if-eq v0, v2, :cond_5

    .line 116
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "expected <!DOCTYPE"

    .line 117
    const/4 v4, 0x0

    .line 116
    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 119
    :cond_5
    iget v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->pos:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    .line 124
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->requireNextS()C

    move-result v0

    .line 125
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->readName(C)C

    move-result v0

    .line 126
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->skipS(C)C

    move-result v0

    .line 129
    const/16 v2, 0x53

    if-eq v0, v2, :cond_6

    if-ne v0, v3, :cond_7

    .line 130
    :cond_6
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processExternalId(C)C

    move-result v0

    .line 131
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->skipS(C)C

    move-result v0

    .line 133
    :cond_7
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_8

    .line 134
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processInternalSubset()V

    .line 136
    :cond_8
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->skipS(C)C

    move-result v0

    .line 137
    const/16 v2, 0x3e

    if-eq v0, v2, :cond_9

    .line 138
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "expected > to finish <[DOCTYPE but got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    const/4 v4, 0x0

    .line 138
    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 142
    :cond_9
    iget v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    .line 146
    return-void
.end method

.method protected processAttlistDecl(C)V
    .locals 0
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    return-void
.end method

.method protected processElementDecl(C)V
    .locals 0
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->requireNextS()C

    move-result p1

    .line 183
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->readName(C)C

    .line 184
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->requireNextS()C

    move-result p1

    .line 186
    return-void
.end method

.method protected processEntityDecl(C)V
    .locals 0
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    return-void
.end method

.method protected processExternalId(C)C
    .locals 0
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    return p1
.end method

.method protected processInternalSubset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    :goto_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v0

    .line 228
    .local v0, ch:C
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    .line 239
    return-void

    .line 231
    :cond_0
    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    .line 232
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processPEReference()V

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->isS(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->skipS(C)C

    move-result v0

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processMarkupDecl(C)V

    goto :goto_0
.end method

.method protected processMarkupDecl(C)V
    .locals 4
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x4e

    const/4 v3, 0x0

    .line 248
    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    .line 249
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected < for markupdecl in DTD not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-direct {v0, v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    .line 254
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_1

    .line 255
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->parsePI()Z

    .line 289
    :goto_0
    return-void

    .line 256
    :cond_1
    const/16 v0, 0x21

    if-ne p1, v0, :cond_8

    .line 257
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    .line 258
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_2

    .line 260
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->parseComment()V

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    .line 263
    const/16 v0, 0x41

    if-ne p1, v0, :cond_3

    .line 264
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processAttlistDecl(C)V

    goto :goto_0

    .line 265
    :cond_3
    const/16 v0, 0x45

    if-ne p1, v0, :cond_6

    .line 266
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    .line 267
    const/16 v0, 0x4c

    if-ne p1, v0, :cond_4

    .line 268
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processElementDecl(C)V

    goto :goto_0

    .line 269
    :cond_4
    if-ne p1, v1, :cond_5

    .line 270
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processEntityDecl(C)V

    goto :goto_0

    .line 272
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected ELEMENT or ENTITY after <! in DTD not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-direct {v0, v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 276
    :cond_6
    if-ne p1, v1, :cond_7

    .line 277
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processNotationDecl(C)V

    goto :goto_0

    .line 279
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected markupdecl after <! in DTD not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-direct {v0, v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 286
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected markupdecl in DTD not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-direct {v0, v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected processNotationDecl(C)V
    .locals 0
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    return-void
.end method

.method protected processPEReference()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    return-void
.end method

.method protected readName(C)C
    .locals 3
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XML name must start with name start character not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    const/4 v2, 0x0

    .line 308
    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 313
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    .line 312
    :cond_1
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->isNameChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    return p1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 325
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->eventType:I

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 328
    const-string v1, "process DOCDECL feature can only be changed before parsing"

    .line 329
    const/4 v2, 0x0

    .line 327
    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 331
    :cond_0
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->processDocDecl:Z

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0
.end method
