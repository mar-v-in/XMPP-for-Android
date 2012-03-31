.class public Lorg/xmlpull/mxp1/MXParser;
.super Ljava/lang/Object;
.source "MXParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# static fields
.field protected static final FEATURE_NAMES_INTERNED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#names-interned"

.field protected static final FEATURE_XML_ROUNDTRIP:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

.field protected static final LOOKUP_MAX:I = 0x400

.field protected static final LOOKUP_MAX_CHAR:C = '\u0400'

.field protected static final NCODING:[C = null

.field protected static final NO:[C = null

.field protected static final PROPERTY_LOCATION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#location"

.field protected static final PROPERTY_XMLDECL_CONTENT:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-content"

.field protected static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

.field protected static final PROPERTY_XMLDECL_VERSION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

.field protected static final READ_CHUNK_SIZE:I = 0x2000

.field protected static final TANDALONE:[C = null

.field private static final TRACE_SIZING:Z = false

.field protected static final VERSION:[C = null

.field protected static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field protected static final XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field protected static final YES:[C

.field protected static lookupNameChar:[Z

.field protected static lookupNameStartChar:[Z


# instance fields
.field protected allStringsInterned:Z

.field protected attributeCount:I

.field protected attributeName:[Ljava/lang/String;

.field protected attributeNameHash:[I

.field protected attributePrefix:[Ljava/lang/String;

.field protected attributeUri:[Ljava/lang/String;

.field protected attributeValue:[Ljava/lang/String;

.field protected buf:[C

.field protected bufAbsoluteStart:I

.field protected bufEnd:I

.field protected bufLoadFactor:I

.field protected bufSoftLimit:I

.field protected bufStart:I

.field protected charRefOneCharBuf:[C

.field protected columnNumber:I

.field protected depth:I

.field protected elName:[Ljava/lang/String;

.field protected elNamespaceCount:[I

.field protected elPrefix:[Ljava/lang/String;

.field protected elRawName:[[C

.field protected elRawNameEnd:[I

.field protected elRawNameLine:[I

.field protected elUri:[Ljava/lang/String;

.field protected emptyElementTag:Z

.field protected entityEnd:I

.field protected entityName:[Ljava/lang/String;

.field protected entityNameBuf:[[C

.field protected entityNameHash:[I

.field protected entityRefName:Ljava/lang/String;

.field protected entityReplacement:[Ljava/lang/String;

.field protected entityReplacementBuf:[[C

.field protected eventType:I

.field protected inputEncoding:Ljava/lang/String;

.field protected inputStream:Ljava/io/InputStream;

.field protected lineNumber:I

.field protected location:Ljava/lang/String;

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespacePrefixHash:[I

.field protected namespaceUri:[Ljava/lang/String;

.field protected pastEndTag:Z

.field protected pc:[C

.field protected pcEnd:I

.field protected pcStart:I

.field protected pos:I

.field protected posEnd:I

.field protected posStart:I

.field protected preventBufferCompaction:Z

.field protected processNamespaces:Z

.field protected reachedEnd:Z

.field protected reader:Ljava/io/Reader;

.field protected roundtripSupported:Z

.field protected seenAmpersand:Z

.field protected seenDocdecl:Z

.field protected seenEndTag:Z

.field protected seenMarkup:Z

.field protected seenRoot:Z

.field protected seenStartTag:Z

.field protected text:Ljava/lang/String;

.field protected tokenize:Z

.field protected usePC:Z

.field protected xmlDeclContent:Ljava/lang/String;

.field protected xmlDeclStandalone:Ljava/lang/Boolean;

.field protected xmlDeclVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 122
    const-string v1, "version"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->VERSION:[C

    .line 123
    const-string v1, "ncoding"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->NCODING:[C

    .line 125
    const-string v1, "tandalone"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->TANDALONE:[C

    .line 126
    const-string v1, "yes"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->YES:[C

    .line 127
    const-string v1, "no"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->NO:[C

    .line 135
    new-array v1, v2, [Z

    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameStartChar:[Z

    .line 136
    new-array v1, v2, [Z

    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameChar:[Z

    .line 138
    const/16 v1, 0x3a

    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    .line 139
    const/16 v0, 0x41

    .local v0, ch:C
    :goto_0
    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    .line 142
    const/16 v1, 0x5f

    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    .line 143
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x7a

    if-le v0, v1, :cond_1

    .line 146
    const/16 v0, 0xc0

    :goto_2
    const/16 v1, 0x2ff

    if-le v0, v1, :cond_2

    .line 149
    const/16 v0, 0x370

    :goto_3
    const/16 v1, 0x37d

    if-le v0, v1, :cond_3

    .line 152
    const/16 v0, 0x37f

    :goto_4
    if-lt v0, v2, :cond_4

    .line 156
    const/16 v1, 0x2d

    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    .line 157
    const/16 v1, 0x2e

    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    .line 158
    const/16 v0, 0x30

    :goto_5
    const/16 v1, 0x39

    if-le v0, v1, :cond_5

    .line 161
    const/16 v1, 0xb7

    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    .line 162
    const/16 v0, 0x300

    :goto_6
    const/16 v1, 0x36f

    if-le v0, v1, :cond_6

    .line 36
    return-void

    .line 140
    :cond_0
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    .line 139
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    .line 143
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_1

    .line 147
    :cond_2
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    .line 146
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_2

    .line 150
    :cond_3
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    .line 149
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_3

    .line 153
    :cond_4
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    .line 152
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_4

    .line 159
    :cond_5
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    .line 158
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_5

    .line 163
    :cond_6
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    .line 162
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_6
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/32 v4, 0xf4240

    const/16 v1, 0x2000

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    .line 245
    const/16 v0, 0x5f

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufLoadFactor:I

    .line 247
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    move v0, v1

    .line 248
    :goto_0
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    .line 249
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufLoadFactor:I

    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v2, v2

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufSoftLimit:I

    .line 263
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 264
    :goto_1
    new-array v0, v1, [C

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    .line 295
    return-void

    .line 248
    :cond_0
    const/16 v0, 0x100

    goto :goto_0

    .line 264
    :cond_1
    const/16 v1, 0x40

    goto :goto_1
.end method

.method protected static final fastHash([CII)I
    .locals 3
    .parameter "ch"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 69
    if-nez p2, :cond_1

    .line 70
    const/4 v0, 0x0

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    aget-char v0, p0, p1

    .line 75
    .local v0, hash:I
    shl-int/lit8 v1, v0, 0x7

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    aget-char v2, p0, v2

    add-int v0, v1, v2

    .line 80
    const/16 v1, 0x10

    if-le p2, v1, :cond_2

    .line 81
    shl-int/lit8 v1, v0, 0x7

    div-int/lit8 v2, p2, 0x4

    add-int/2addr v2, p1

    aget-char v2, p0, v2

    add-int v0, v1, v2

    .line 83
    :cond_2
    const/16 v1, 0x8

    if-le p2, v1, :cond_0

    .line 84
    shl-int/lit8 v1, v0, 0x7

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v2, p1

    aget-char v2, p0, v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private static findFragment(I[CII)I
    .locals 5
    .parameter "bufMinPos"
    .parameter "b"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v4, 0x41

    .line 97
    if-ge p2, p0, :cond_2

    .line 98
    move p2, p0

    .line 99
    if-le p2, p3, :cond_0

    .line 100
    move p2, p3

    :cond_0
    move v1, p2

    .line 117
    :cond_1
    :goto_0
    return v1

    .line 104
    :cond_2
    sub-int v2, p3, p2

    if-le v2, v4, :cond_3

    .line 105
    add-int/lit8 p2, p3, -0xa

    .line 107
    :cond_3
    add-int/lit8 v1, p2, 0x1

    .line 108
    .local v1, i:I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    if-le v1, p0, :cond_1

    .line 109
    sub-int v2, p3, v1

    if-gt v2, v4, :cond_1

    .line 112
    aget-char v0, p1, v1

    .line 113
    .local v0, c:C
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_4

    sub-int v2, p2, v1

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    goto :goto_0
.end method

.method private static final setName(C)V
    .locals 2
    .parameter "ch"

    .prologue
    .line 170
    sget-object v0, Lorg/xmlpull/mxp1/MXParser;->lookupNameChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    .line 171
    return-void
.end method

.method private static final setNameStart(C)V
    .locals 2
    .parameter "ch"

    .prologue
    .line 176
    sget-object v0, Lorg/xmlpull/mxp1/MXParser;->lookupNameStartChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    .line 177
    invoke-static {p0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    .line 178
    return-void
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "entityName"
    .parameter "replacementText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 303
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->ensureEntityCapacity()V

    .line 307
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 307
    invoke-virtual {p0, v2, v5, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 309
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aput-object v2, v0, v1

    .line 311
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    aput-object p2, v0, v1

    .line 312
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aput-object v2, v0, v1

    .line 313
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    aget-object v2, v2, v3

    .line 315
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    aget-object v3, v3, v4

    array-length v3, v3

    .line 314
    invoke-static {v2, v5, v3}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v2

    aput v2, v0, v1

    .line 317
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    .line 320
    return-void
.end method

.method protected ensureAttributesCapacity(I)V
    .locals 8
    .parameter "size"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 326
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    array-length v1, v7

    .line 328
    .local v1, attrPosSize:I
    :goto_0
    if-lt p1, v1, :cond_6

    .line 329
    const/4 v7, 0x7

    if-le p1, v7, :cond_8

    mul-int/lit8 v4, p1, 0x2

    .line 334
    .local v4, newSize:I
    :goto_1
    if-lez v1, :cond_9

    const/4 v3, 0x1

    .local v3, needsCopying:Z
    :goto_2
    move-object v0, v5

    .line 335
    check-cast v0, [Ljava/lang/String;

    .line 337
    .local v0, arr:[Ljava/lang/String;
    new-array v0, v4, [Ljava/lang/String;

    .line 338
    if-eqz v3, :cond_0

    .line 339
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    invoke-static {v7, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    :cond_0
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    .line 343
    new-array v0, v4, [Ljava/lang/String;

    .line 344
    if-eqz v3, :cond_1

    .line 345
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    invoke-static {v7, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    :cond_1
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    .line 349
    new-array v0, v4, [Ljava/lang/String;

    .line 350
    if-eqz v3, :cond_2

    .line 351
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    invoke-static {v7, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    :cond_2
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    .line 355
    new-array v0, v4, [Ljava/lang/String;

    .line 356
    if-eqz v3, :cond_3

    .line 357
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    invoke-static {v7, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    :cond_3
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    .line 361
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v7, :cond_5

    .line 362
    new-array v2, v4, [I

    .line 363
    .local v2, iarr:[I
    if-eqz v3, :cond_4

    .line 364
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    invoke-static {v7, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    :cond_4
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    .line 369
    .end local v2           #iarr:[I
    :cond_5
    check-cast v5, [Ljava/lang/String;

    .line 372
    .end local v0           #arr:[Ljava/lang/String;
    .end local v3           #needsCopying:Z
    .end local v4           #newSize:I
    :cond_6
    return-void

    .end local v1           #attrPosSize:I
    :cond_7
    move v1, v6

    .line 327
    goto :goto_0

    .line 329
    .restart local v1       #attrPosSize:I
    :cond_8
    const/16 v4, 0x8

    goto :goto_1

    .restart local v4       #newSize:I
    :cond_9
    move v3, v6

    .line 334
    goto :goto_2
.end method

.method protected ensureElementsCapacity()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 379
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    array-length v2, v7

    .line 380
    .local v2, elStackSize:I
    :goto_0
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v2, :cond_6

    .line 382
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    const/4 v8, 0x7

    if-lt v7, v8, :cond_8

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    mul-int/lit8 v7, v7, 0x2

    :goto_1
    add-int/lit8 v5, v7, 0x2

    .line 388
    .local v5, newSize:I
    if-lez v2, :cond_9

    const/4 v4, 0x1

    .line 389
    .local v4, needsCopying:Z
    :goto_2
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 391
    .local v0, arr:[Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    .line 392
    if-eqz v4, :cond_0

    .line 393
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    invoke-static {v7, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    :cond_0
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    .line 396
    new-array v0, v5, [Ljava/lang/String;

    .line 397
    if-eqz v4, :cond_1

    .line 398
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    invoke-static {v7, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    :cond_1
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    .line 401
    new-array v0, v5, [Ljava/lang/String;

    .line 402
    if-eqz v4, :cond_2

    .line 403
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    invoke-static {v7, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    :cond_2
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    .line 407
    new-array v3, v5, [I

    .line 408
    .local v3, iarr:[I
    if-eqz v4, :cond_a

    .line 409
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    invoke-static {v7, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    :goto_3
    iput-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    .line 417
    new-array v3, v5, [I

    .line 418
    if-eqz v4, :cond_3

    .line 419
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    invoke-static {v7, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    :cond_3
    iput-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    .line 423
    new-array v3, v5, [I

    .line 424
    if-eqz v4, :cond_4

    .line 425
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    invoke-static {v7, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    :cond_4
    iput-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    .line 429
    new-array v1, v5, [[C

    .line 430
    .local v1, carr:[[C
    if-eqz v4, :cond_5

    .line 431
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    invoke-static {v7, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    :cond_5
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    .line 452
    .end local v0           #arr:[Ljava/lang/String;
    .end local v1           #carr:[[C
    .end local v3           #iarr:[I
    .end local v4           #needsCopying:Z
    .end local v5           #newSize:I
    :cond_6
    return-void

    .end local v2           #elStackSize:I
    :cond_7
    move v2, v6

    .line 379
    goto :goto_0

    .line 382
    .restart local v2       #elStackSize:I
    :cond_8
    const/16 v7, 0x8

    goto :goto_1

    .restart local v5       #newSize:I
    :cond_9
    move v4, v6

    .line 388
    goto :goto_2

    .line 412
    .restart local v0       #arr:[Ljava/lang/String;
    .restart local v3       #iarr:[I
    .restart local v4       #needsCopying:Z
    :cond_a
    aput v6, v3, v6

    goto :goto_3
.end method

.method protected ensureEntityCapacity()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 455
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    if-eqz v8, :cond_3

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    array-length v0, v8

    .line 457
    .local v0, entitySize:I
    :goto_0
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    if-lt v8, v0, :cond_2

    .line 458
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    const/4 v9, 0x7

    if-le v8, v9, :cond_4

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    mul-int/lit8 v6, v8, 0x2

    .line 464
    .local v6, newSize:I
    :goto_1
    new-array v1, v6, [Ljava/lang/String;

    .line 465
    .local v1, newEntityName:[Ljava/lang/String;
    new-array v2, v6, [[C

    .line 466
    .local v2, newEntityNameBuf:[[C
    new-array v4, v6, [Ljava/lang/String;

    .line 467
    .local v4, newEntityReplacement:[Ljava/lang/String;
    new-array v5, v6, [[C

    .line 468
    .local v5, newEntityReplacementBuf:[[C
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 469
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-static {v8, v7, v1, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    .line 471
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    .line 470
    invoke-static {v8, v7, v2, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    .line 473
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    .line 472
    invoke-static {v8, v7, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    .line 475
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    .line 474
    invoke-static {v8, v7, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    :cond_0
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    .line 478
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    .line 479
    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    .line 480
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    .line 482
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v8, :cond_2

    .line 483
    new-array v3, v6, [I

    .line 484
    .local v3, newEntityNameHash:[I
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    if-eqz v8, :cond_1

    .line 485
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    .line 486
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    .line 485
    invoke-static {v8, v7, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    :cond_1
    iput-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    .line 491
    .end local v1           #newEntityName:[Ljava/lang/String;
    .end local v2           #newEntityNameBuf:[[C
    .end local v3           #newEntityNameHash:[I
    .end local v4           #newEntityReplacement:[Ljava/lang/String;
    .end local v5           #newEntityReplacementBuf:[[C
    .end local v6           #newSize:I
    :cond_2
    return-void

    .end local v0           #entitySize:I
    :cond_3
    move v0, v7

    .line 456
    goto :goto_0

    .line 458
    .restart local v0       #entitySize:I
    :cond_4
    const/16 v6, 0x8

    goto :goto_1
.end method

.method protected ensureNamespacesCapacity(I)V
    .locals 8
    .parameter "size"

    .prologue
    const/4 v5, 0x0

    .line 494
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    array-length v0, v6

    .line 496
    .local v0, namespaceSize:I
    :goto_0
    if-lt p1, v0, :cond_2

    .line 497
    const/4 v6, 0x7

    if-le p1, v6, :cond_4

    mul-int/lit8 v4, p1, 0x2

    .line 502
    .local v4, newSize:I
    :goto_1
    new-array v1, v4, [Ljava/lang/String;

    .line 503
    .local v1, newNamespacePrefix:[Ljava/lang/String;
    new-array v3, v4, [Ljava/lang/String;

    .line 504
    .local v3, newNamespaceUri:[Ljava/lang/String;
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 505
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    .line 506
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    .line 505
    invoke-static {v6, v5, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    .line 508
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    .line 507
    invoke-static {v6, v5, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    :cond_0
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    .line 511
    iput-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    .line 513
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v6, :cond_2

    .line 514
    new-array v2, v4, [I

    .line 515
    .local v2, newNamespacePrefixHash:[I
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    if-eqz v6, :cond_1

    .line 516
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    .line 517
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    .line 516
    invoke-static {v6, v5, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    :cond_1
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    .line 524
    .end local v1           #newNamespacePrefix:[Ljava/lang/String;
    .end local v2           #newNamespacePrefixHash:[I
    .end local v3           #newNamespaceUri:[Ljava/lang/String;
    .end local v4           #newSize:I
    :cond_2
    return-void

    .end local v0           #namespaceSize:I
    :cond_3
    move v0, v5

    .line 495
    goto :goto_0

    .line 497
    .restart local v0       #namespaceSize:I
    :cond_4
    const/16 v4, 0x8

    goto :goto_1
.end method

.method protected ensurePC(I)V
    .locals 5
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 528
    const/16 v2, 0x2000

    if-le p1, v2, :cond_0

    mul-int/lit8 v1, p1, 0x2

    .line 530
    .local v1, newSize:I
    :goto_0
    new-array v0, v1, [C

    .line 535
    .local v0, newPC:[C
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    .line 538
    return-void

    .line 529
    .end local v0           #newPC:[C
    .end local v1           #newSize:I
    :cond_0
    const/16 v1, 0x4000

    goto :goto_0
.end method

.method protected fillBuf()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 541
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    if-nez v9, :cond_0

    .line 542
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    .line 543
    const-string v10, "reader must be set before parsing is started"

    .line 542
    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 547
    :cond_0
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufSoftLimit:I

    if-le v9, v10, :cond_3

    .line 550
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufSoftLimit:I

    if-le v9, v10, :cond_4

    const/4 v0, 0x1

    .line 551
    .local v0, compact:Z
    :goto_0
    const/4 v1, 0x0

    .line 552
    .local v1, expand:Z
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    if-eqz v9, :cond_5

    .line 553
    const/4 v0, 0x0

    .line 554
    const/4 v1, 0x1

    .line 569
    :cond_1
    :goto_1
    if-eqz v0, :cond_7

    .line 572
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    const/4 v12, 0x0

    iget v13, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    iget v14, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    sub-int/2addr v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    :cond_2
    :goto_2
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    sub-int/2addr v9, v10

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    .line 609
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    sub-int/2addr v9, v10

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 610
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    sub-int/2addr v9, v10

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 611
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    sub-int/2addr v9, v10

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 612
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    add-int/2addr v9, v10

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    .line 613
    const/4 v9, 0x0

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    .line 622
    .end local v0           #compact:Z
    .end local v1           #expand:Z
    :cond_3
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v9, v9

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    sub-int/2addr v9, v10

    const/16 v10, 0x2000

    if-le v9, v10, :cond_9

    const/16 v4, 0x2000

    .line 624
    .local v4, len:I
    :goto_3
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    invoke-virtual {v9, v10, v11, v4}, Ljava/io/Reader;->read([CII)I

    move-result v7

    .line 625
    .local v7, ret:I
    if-lez v7, :cond_a

    .line 626
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    add-int/2addr v9, v7

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    .line 643
    :goto_4
    return-void

    .line 550
    .end local v4           #len:I
    .end local v7           #ret:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 555
    .restart local v0       #compact:Z
    .restart local v1       #expand:Z
    :cond_5
    if-nez v0, :cond_1

    .line 557
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v10, v10

    div-int/lit8 v10, v10, 0x2

    if-ge v9, v10, :cond_6

    .line 560
    const/4 v1, 0x1

    goto :goto_1

    .line 564
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 590
    :cond_7
    if-eqz v1, :cond_8

    .line 591
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v9, v9

    mul-int/lit8 v6, v9, 0x2

    .line 592
    .local v6, newSize:I
    new-array v5, v6, [C

    .line 597
    .local v5, newBuf:[C
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    const/4 v11, 0x0

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    iget v13, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    sub-int/2addr v12, v13

    invoke-static {v9, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    .line 599
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufLoadFactor:I

    if-lez v9, :cond_2

    .line 601
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufLoadFactor:I

    int-to-long v9, v9

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v11, v11

    int-to-long v11, v11

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x64

    div-long/2addr v9, v11

    long-to-int v9, v9

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufSoftLimit:I

    goto :goto_2

    .line 605
    .end local v5           #newBuf:[C
    .end local v6           #newSize:I
    :cond_8
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    .line 606
    const-string v10, "internal error in fillBuffer()"

    .line 605
    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 623
    .end local v0           #compact:Z
    .end local v1           #expand:Z
    :cond_9
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v9, v9

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    sub-int v4, v9, v10

    goto :goto_3

    .line 637
    .restart local v4       #len:I
    .restart local v7       #ret:I
    :cond_a
    const/4 v9, -0x1

    if-ne v7, v9, :cond_12

    .line 638
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    if-nez v9, :cond_b

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    if-nez v9, :cond_b

    .line 639
    new-instance v9, Ljava/io/EOFException;

    const-string v10, "input contained no data"

    invoke-direct {v9, v10}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 641
    :cond_b
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->seenRoot:Z

    if-eqz v9, :cond_c

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-nez v9, :cond_c

    .line 642
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    goto :goto_4

    .line 645
    :cond_c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 646
    .local v2, expectedTagStack:Ljava/lang/StringBuffer;
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-lez v9, :cond_e

    .line 650
    const-string v9, " - expected end tag"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 651
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_d

    .line 652
    const-string v9, "s"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 655
    :cond_d
    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .local v3, i:I
    :goto_5
    if-gtz v3, :cond_f

    .line 662
    const-string v9, " to close"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    :goto_6
    if-gtz v3, :cond_10

    .line 676
    const-string v9, ", parser stopped on"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 678
    .end local v3           #i:I
    :cond_e
    new-instance v9, Ljava/io/EOFException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "no more data available"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 680
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 678
    invoke-direct {v9, v10}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 657
    .restart local v3       #i:I
    :cond_f
    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    aget-object v9, v9, v3

    const/4 v10, 0x0

    .line 658
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    aget v11, v11, v3

    .line 657
    invoke-direct {v8, v9, v10, v11}, Ljava/lang/String;-><init>([CII)V

    .line 659
    .local v8, tagName:Ljava/lang/String;
    const-string v9, "</"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 660
    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 656
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 664
    .end local v8           #tagName:Ljava/lang/String;
    :cond_10
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-eq v3, v9, :cond_11

    .line 665
    const-string v9, " and"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    :cond_11
    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    aget-object v9, v9, v3

    const/4 v10, 0x0

    .line 670
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    aget v11, v11, v3

    .line 669
    invoke-direct {v8, v9, v10, v11}, Ljava/lang/String;-><init>([CII)V

    .line 671
    .restart local v8       #tagName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " start tag <"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 672
    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 671
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " from line "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    aget v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 673
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_6

    .line 684
    .end local v2           #expectedTagStack:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    .end local v8           #tagName:Ljava/lang/String;
    :cond_12
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "error reading input, returned "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public getAttributeCount()I
    .locals 2

    .prologue
    .line 690
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 691
    const/4 v0, -0x1

    .line 693
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    goto :goto_0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 698
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 699
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 700
    const-string v1, "only START_TAG can have attributes"

    .line 699
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt p1, v0, :cond_2

    .line 703
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 705
    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 704
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 712
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 713
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 714
    const-string v1, "only START_TAG can have attributes"

    .line 713
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v0, :cond_1

    .line 717
    const-string v0, ""

    .line 724
    :goto_0
    return-object v0

    .line 719
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt p1, v0, :cond_3

    .line 720
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 722
    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 721
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 720
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_3
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 729
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 730
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 731
    const-string v1, "only START_TAG can have attributes"

    .line 730
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v0, :cond_1

    .line 734
    const/4 v0, 0x0

    .line 741
    :goto_0
    return-object v0

    .line 736
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt p1, v0, :cond_3

    .line 737
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 739
    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 737
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_3
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 746
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 747
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 748
    const-string v1, "only START_TAG can have attributes"

    .line 747
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt p1, v0, :cond_2

    .line 751
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 753
    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 752
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 751
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_2
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 760
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 761
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 762
    const-string v1, "only START_TAG can have attributes"

    .line 761
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt p1, v0, :cond_2

    .line 765
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 767
    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 766
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 765
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 774
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 775
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "only START_TAG can have attributes"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 776
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 775
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 779
    :cond_0
    if-nez p2, :cond_1

    .line 780
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attribute name can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 783
    :cond_1
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v1, :cond_7

    .line 784
    if-nez p1, :cond_2

    .line 785
    const-string p1, ""

    .line 788
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt v0, v1, :cond_4

    .line 811
    :cond_3
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 789
    :cond_4
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eq p1, v1, :cond_5

    .line 790
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 793
    :cond_5
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 794
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_1

    .line 788
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    .end local v0           #i:I
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    .line 799
    const/4 p1, 0x0

    .line 801
    :cond_8
    if-eqz p1, :cond_9

    .line 802
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 803
    const-string v2, "when namespaces processing is disabled attribute namespace must be null"

    .line 802
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 805
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge v0, v1, :cond_3

    .line 806
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 807
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_1

    .line 805
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 826
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 832
    if-nez p1, :cond_0

    .line 833
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 834
    const-string v1, "feature name should not be null"

    .line 833
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_0
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 837
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    .line 850
    :cond_1
    :goto_0
    return v0

    .line 840
    :cond_2
    const-string v1, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 842
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 846
    const-string v1, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 860
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 865
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 867
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    .line 876
    :goto_0
    return-object v0

    .line 868
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 869
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 870
    :cond_1
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 871
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 872
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 874
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    goto :goto_0

    .line 876
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 882
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 884
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    .line 888
    :goto_0
    return-object v0

    .line 884
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 885
    :cond_1
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 886
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 888
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"

    .prologue
    .line 912
    if-eqz p1, :cond_3

    .line 913
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 918
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 919
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 932
    :goto_1
    return-object v1

    .line 914
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_1

    .line 913
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 920
    :cond_2
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 921
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_1

    .line 924
    .end local v0           #i:I
    :cond_3
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0       #i:I
    :goto_2
    if-gez v0, :cond_5

    .line 932
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 925
    :cond_5
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_6

    .line 927
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_1

    .line 924
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public getNamespaceCount(I)I
    .locals 3
    .parameter "depth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 937
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 938
    :cond_0
    const/4 v0, 0x0

    .line 946
    :goto_0
    return v0

    .line 942
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-le p1, v0, :cond_3

    .line 943
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "allowed namespace depth 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 944
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 943
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_3
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 3
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 955
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    if-ge p1, v0, :cond_0

    .line 956
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 958
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 959
    const-string v2, " exceeded number of available namespaces "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 960
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 958
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 3
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 969
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    if-ge p1, v0, :cond_0

    .line 970
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 972
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 973
    const-string v2, " exceeded number of available namespaces "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 974
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 6

    .prologue
    .line 984
    const/4 v0, 0x0

    .line 985
    .local v0, fragment:Ljava/lang/String;
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    if-gt v2, v3, :cond_2

    .line 986
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    invoke-static {v2, v3, v4, v5}, Lorg/xmlpull/mxp1/MXParser;->findFragment(I[CII)I

    move-result v1

    .line 988
    .local v1, start:I
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    if-ge v1, v2, :cond_0

    .line 989
    new-instance v0, Ljava/lang/String;

    .end local v0           #fragment:Ljava/lang/String;
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v3, v1

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 991
    .restart local v0       #fragment:Ljava/lang/String;
    :cond_0
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    if-gtz v2, :cond_1

    if-lez v1, :cond_2

    .line 992
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 998
    .end local v1           #start:I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 999
    sget-object v3, Lorg/xmlpull/mxp1/MXParser;->TYPES:[Ljava/lang/String;

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1000
    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " seen "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1001
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->location:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->location:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1002
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 998
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1001
    :cond_3
    const-string v2, ""

    goto :goto_0

    :cond_4
    const-string v2, ""

    goto :goto_1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1007
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1009
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    .line 1013
    :goto_0
    return-object v0

    .line 1010
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1011
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 1013
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 1021
    if-nez p1, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1023
    const-string v1, "property name should not be null"

    .line 1022
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclVersion:Ljava/lang/String;

    .line 1034
    :goto_0
    return-object v0

    .line 1027
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1028
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    goto :goto_0

    .line 1029
    :cond_2
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1030
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclContent:Ljava/lang/String;

    goto :goto_0

    .line 1031
    :cond_3
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1032
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->location:Ljava/lang/String;

    goto :goto_0

    .line 1034
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1047
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1052
    :cond_0
    const/4 v0, 0x0

    .line 1064
    :goto_0
    return-object v0

    .line 1054
    :cond_1
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 1055
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    goto :goto_0

    .line 1057
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1058
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1059
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 1064
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    goto :goto_0

    .line 1061
    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    goto :goto_1
.end method

.method public getTextCharacters([I)[C
    .locals 4
    .parameter "holderForStartAndLength"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1069
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1070
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 1071
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    aput v0, p1, v3

    .line 1072
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    sub-int/2addr v0, v1

    aput v0, p1, v2

    .line 1073
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    .line 1091
    :goto_0
    return-object v0

    .line 1075
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    aput v0, p1, v3

    .line 1076
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v0, v1

    aput v0, p1, v2

    .line 1077
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    goto :goto_0

    .line 1080
    :cond_1
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1081
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 1082
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 1083
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 1084
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1085
    :cond_2
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    aput v0, p1, v3

    .line 1086
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v0, v1

    aput v0, p1, v2

    .line 1087
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    goto :goto_0

    .line 1088
    :cond_3
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    if-ne v0, v2, :cond_5

    .line 1090
    :cond_4
    const/4 v0, -0x1

    aput v0, p1, v2

    aput v0, p1, v3

    .line 1091
    const/4 v0, 0x0

    goto :goto_0

    .line 1093
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown text eventType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1094
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAttributeDefault(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 1109
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1110
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 1111
    const-string v1, "only START_TAG can have attributes"

    .line 1110
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1113
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt p1, v0, :cond_2

    .line 1114
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute position must be 0.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1116
    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1114
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1123
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1124
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1125
    const-string v1, "parser must be on START_TAG to check for empty element"

    .line 1126
    const/4 v2, 0x0

    .line 1124
    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1128
    :cond_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    return v0
.end method

.method protected isNameChar(C)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/16 v1, 0x400

    .line 1138
    if-ge p1, v1, :cond_0

    sget-object v0, Lorg/xmlpull/mxp1/MXParser;->lookupNameChar:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_4

    .line 1139
    :cond_0
    if-lt p1, v1, :cond_1

    const/16 v0, 0x2027

    if-le p1, v0, :cond_4

    .line 1140
    :cond_1
    const/16 v0, 0x202a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x218f

    if-le p1, v0, :cond_4

    .line 1141
    :cond_2
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_3

    const v0, 0xffef

    if-le p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x1

    .line 1138
    goto :goto_0
.end method

.method protected isNameStartChar(C)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/16 v1, 0x400

    .line 1163
    if-ge p1, v1, :cond_0

    sget-object v0, Lorg/xmlpull/mxp1/MXParser;->lookupNameStartChar:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_4

    .line 1164
    :cond_0
    if-lt p1, v1, :cond_1

    const/16 v0, 0x2027

    if-le p1, v0, :cond_4

    .line 1165
    :cond_1
    const/16 v0, 0x202a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x218f

    if-le p1, v0, :cond_4

    .line 1166
    :cond_2
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_3

    const v0, 0xffef

    if-le p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x1

    .line 1163
    goto :goto_0
.end method

.method protected isS(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 1194
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWhitespace()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1200
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 1201
    :cond_0
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v3, :cond_4

    .line 1202
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .local v0, i:I
    :goto_0
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    if-lt v0, v3, :cond_2

    .line 1217
    .end local v0           #i:I
    :cond_1
    :goto_1
    return v1

    .line 1203
    .restart local v0       #i:I
    :cond_2
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 1204
    goto :goto_1

    .line 1202
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1209
    .end local v0           #i:I
    :cond_4
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .restart local v0       #i:I
    :goto_2
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    if-ge v0, v3, :cond_1

    .line 1210
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 1211
    goto :goto_1

    .line 1209
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1216
    .end local v0           #i:I
    :cond_6
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 1219
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1220
    const-string v2, "no content available to check for white spaces"

    .line 1219
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected joinPC()V
    .locals 6

    .prologue
    .line 1226
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int v0, v2, v3

    .line 1227
    .local v0, len:I
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, 0x1

    .line 1228
    .local v1, newEnd:I
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1229
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1232
    :cond_0
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1233
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 1234
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1236
    return-void
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
    .line 1242
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_6

    .line 1243
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v1

    .line 1244
    .local v1, hash:I
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_1

    .line 1271
    .end local v1           #hash:I
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 1245
    .restart local v1       #hash:I
    :cond_1
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    aget v4, v4, v2

    if-ne v1, v4, :cond_4

    .line 1246
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    aget-object v4, v4, v2

    array-length v4, v4

    if-ne p1, v4, :cond_4

    .line 1247
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    aget-object v0, v4, v2

    .line 1248
    .local v0, entityBuf:[C
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-lt v3, p1, :cond_3

    .line 1253
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v4, :cond_2

    .line 1254
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v4, v4, v2

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 1256
    :cond_2
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    aget-object v4, v4, v2

    goto :goto_1

    .line 1249
    :cond_3
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/2addr v5, v3

    aget-char v4, v4, v5

    aget-char v5, v0, v3

    if-eq v4, v5, :cond_5

    .line 1244
    .end local v0           #entityBuf:[C
    .end local v3           #j:I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1248
    .restart local v0       #entityBuf:[C
    .restart local v3       #j:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1260
    .end local v0           #entityBuf:[C
    .end local v1           #hash:I
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_6
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v4, v5, v6}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 1261
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    add-int/lit8 v2, v4, -0x1

    .restart local v2       #i:I
    :goto_3
    if-ltz v2, :cond_0

    .line 1263
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-ne v4, v5, :cond_8

    .line 1264
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v4, :cond_7

    .line 1265
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v4, v4, v2

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 1267
    :cond_7
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    aget-object v4, v4, v2

    goto :goto_1

    .line 1261
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method protected more()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1275
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    if-lt v1, v2, :cond_0

    .line 1276
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->fillBuf()V

    .line 1279
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    if-eqz v1, :cond_0

    .line 1280
    const v0, 0xffff

    .line 1292
    :goto_0
    return v0

    .line 1283
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    aget-char v0, v1, v2

    .line 1285
    .local v0, ch:C
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1286
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 1287
    const/4 v1, 0x1

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    goto :goto_0

    .line 1289
    :cond_1
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    goto :goto_0
.end method

.method protected newString([CII)Ljava/lang/String;
    .locals 1
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 1296
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected newStringIntern([CII)Ljava/lang/String;
    .locals 1
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 1300
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    .line 1306
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method protected nextImpl()I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1310
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 1311
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 1312
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1313
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    .line 1314
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1315
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    .line 1316
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    .line 1319
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1320
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 1321
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    .line 1322
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    .line 1626
    :goto_0
    return v18

    .line 1326
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v18, v0

    if-lez v18, :cond_31

    .line 1328
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1329
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    .line 1330
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseStartTag()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto :goto_0

    .line 1332
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1333
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    .line 1334
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseEndTag()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto :goto_0

    .line 1341
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1342
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1343
    const/16 v7, 0x3c

    .line 1350
    .local v7, ch:C
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1355
    const/4 v9, 0x0

    .line 1359
    .local v9, hadCharData:Z
    const/4 v10, 0x0

    .line 1363
    .local v10, needsMerging:Z
    :goto_2
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v7, v0, :cond_15

    .line 1364
    if-eqz v9, :cond_6

    .line 1366
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1367
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1368
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1344
    .end local v7           #ch:C
    .end local v9           #hadCharData:Z
    .end local v10           #needsMerging:Z
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1345
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    .line 1346
    const/16 v7, 0x26

    .restart local v7       #ch:C
    goto :goto_1

    .line 1348
    .end local v7           #ch:C
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    .restart local v7       #ch:C
    goto :goto_1

    .line 1371
    .restart local v9       #hadCharData:Z
    .restart local v10       #needsMerging:Z
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    .line 1372
    const/16 v18, 0x2f

    move/from16 v0, v18

    if-ne v7, v0, :cond_8

    .line 1373
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    if-eqz v9, :cond_7

    .line 1374
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    .line 1376
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1378
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseEndTag()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1379
    :cond_8
    const/16 v18, 0x21

    move/from16 v0, v18

    if-ne v7, v0, :cond_f

    .line 1380
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    .line 1381
    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v7, v0, :cond_c

    .line 1384
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseComment()V

    .line 1385
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 1386
    const/16 v18, 0x9

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1388
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    if-eqz v9, :cond_b

    .line 1389
    const/4 v10, 0x1

    .line 1620
    :cond_a
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    .line 1361
    goto/16 :goto_2

    .line 1391
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    goto :goto_3

    .line 1393
    :cond_c
    const/16 v18, 0x5b

    move/from16 v0, v18

    if-ne v7, v0, :cond_e

    .line 1399
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/xmlpull/mxp1/MXParser;->parseCDSect(Z)V

    .line 1400
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1401
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1403
    :cond_d
    move-object/from16 v0, p0

    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1404
    .local v6, cdStart:I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1405
    .local v4, cdEnd:I
    sub-int v5, v4, v6

    .line 1407
    .local v5, cdLen:I
    if-lez v5, :cond_a

    .line 1409
    const/4 v9, 0x1

    .line 1410
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 1411
    const/4 v10, 0x1

    goto :goto_3

    .line 1456
    .end local v4           #cdEnd:I
    .end local v5           #cdLen:I
    .end local v6           #cdStart:I
    :cond_e
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1457
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "unexpected character in markup "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1458
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1457
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1458
    const/16 v20, 0x0

    .line 1456
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v18

    .line 1460
    :cond_f
    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v7, v0, :cond_12

    .line 1461
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parsePI()Z

    .line 1462
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 1463
    const/16 v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1465
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    if-eqz v9, :cond_11

    .line 1466
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 1468
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    goto/16 :goto_3

    .line 1471
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1472
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    if-eqz v9, :cond_13

    .line 1473
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    .line 1475
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1477
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseStartTag()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1479
    :cond_14
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1480
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "unexpected character in markup "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1481
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1480
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1481
    const/16 v20, 0x0

    .line 1479
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v18

    .line 1485
    :cond_15
    const/16 v18, 0x26

    move/from16 v0, v18

    if-ne v7, v0, :cond_1e

    .line 1488
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    move/from16 v18, v0

    if-eqz v18, :cond_16

    if-eqz v9, :cond_16

    .line 1489
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    .line 1490
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1492
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v19, v0

    add-int v14, v18, v19

    .line 1493
    .local v14, oldStart:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v19, v0

    add-int v13, v18, v19

    .line 1494
    .local v13, oldEnd:I
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseEntityRef()[C

    move-result-object v15

    .line 1495
    .local v15, resolvedEntity:[C
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    .line 1496
    const/16 v18, 0x6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1499
    :cond_17
    if-nez v15, :cond_19

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_18

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    move/from16 v20, v0

    .line 1502
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    .line 1501
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 1504
    :cond_18
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1505
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "could not resolve entity named \'"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1505
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1507
    const/16 v20, 0x0

    .line 1504
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v18

    .line 1511
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1512
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1513
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    move/from16 v18, v0

    if-nez v18, :cond_1a

    .line 1514
    if-eqz v9, :cond_1b

    .line 1515
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 1516
    const/4 v10, 0x0

    .line 1525
    :cond_1a
    :goto_4
    array-length v0, v15

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_5
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1c

    .line 1532
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 1518
    :cond_1b
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1519
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    goto :goto_4

    .line 1525
    :cond_1c
    aget-char v8, v15, v18

    .line 1526
    .local v8, element:C
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1d

    .line 1527
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1529
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v21, v0

    add-int/lit8 v22, v21, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v8, v20, v21

    .line 1525
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 1536
    .end local v8           #element:C
    .end local v13           #oldEnd:I
    .end local v14           #oldStart:I
    .end local v15           #resolvedEntity:[C
    :cond_1e
    if-eqz v10, :cond_1f

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 1540
    const/4 v10, 0x0

    .line 1547
    :cond_1f
    const/4 v9, 0x1

    .line 1549
    const/4 v12, 0x0

    .line 1550
    .local v12, normalizedCR:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    move/from16 v18, v0

    if-eqz v18, :cond_26

    .line 1551
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    move/from16 v18, v0

    if-eqz v18, :cond_26

    const/4 v11, 0x0

    .line 1553
    .local v11, normalizeInput:Z
    :goto_6
    const/16 v16, 0x0

    .line 1554
    .local v16, seenBracket:Z
    const/16 v17, 0x0

    .line 1558
    :cond_20
    const/16 v18, 0x5d

    move/from16 v0, v18

    if-ne v7, v0, :cond_28

    .line 1559
    if-eqz v16, :cond_27

    .line 1560
    const/16 v17, 0x1

    .line 1574
    :cond_21
    :goto_7
    if-eqz v11, :cond_24

    .line 1576
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v7, v0, :cond_2b

    .line 1577
    const/4 v12, 0x1

    .line 1578
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1580
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    move/from16 v18, v0

    if-nez v18, :cond_22

    .line 1581
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2a

    .line 1582
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 1589
    :cond_22
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_23

    .line 1590
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1592
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v20, 0xa

    aput-char v20, v18, v19

    .line 1614
    :cond_24
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    .line 1615
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-eq v7, v0, :cond_25

    const/16 v18, 0x26

    move/from16 v0, v18

    if-ne v7, v0, :cond_20

    .line 1616
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    goto/16 :goto_2

    .line 1551
    .end local v11           #normalizeInput:Z
    .end local v16           #seenBracket:Z
    :cond_26
    const/4 v11, 0x1

    goto/16 :goto_6

    .line 1562
    .restart local v11       #normalizeInput:Z
    .restart local v16       #seenBracket:Z
    :cond_27
    const/16 v16, 0x1

    goto/16 :goto_7

    .line 1564
    :cond_28
    if-eqz v17, :cond_29

    const/16 v18, 0x3e

    move/from16 v0, v18

    if-ne v7, v0, :cond_29

    .line 1565
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1566
    const-string v19, "characters ]]> are not allowed in content"

    .line 1567
    const/16 v20, 0x0

    .line 1565
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v18

    .line 1569
    :cond_29
    if-eqz v16, :cond_21

    .line 1570
    const/16 v16, 0x0

    move/from16 v17, v16

    .local v17, seenBracketBracket:I
    goto/16 :goto_7

    .line 1584
    .end local v17           #seenBracketBracket:I
    :cond_2a
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1585
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    goto/16 :goto_8

    .line 1593
    :cond_2b
    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v7, v0, :cond_2e

    .line 1596
    if-nez v12, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2d

    .line 1597
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2c

    .line 1598
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1600
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v20, 0xa

    aput-char v20, v18, v19

    .line 1602
    :cond_2d
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 1604
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    move/from16 v18, v0

    if-eqz v18, :cond_30

    .line 1605
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2f

    .line 1606
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1608
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v7, v18, v19

    .line 1610
    :cond_30
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 1623
    .end local v7           #ch:C
    .end local v9           #hadCharData:Z
    .end local v10           #needsMerging:Z
    .end local v11           #normalizeInput:Z
    .end local v12           #normalizedCR:Z
    .end local v16           #seenBracket:Z
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->seenRoot:Z

    move/from16 v18, v0

    if-eqz v18, :cond_32

    .line 1624
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseEpilog()I

    move-result v18

    goto/16 :goto_0

    .line 1626
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseProlog()I

    move-result v18

    goto/16 :goto_0
.end method

.method public nextTag()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1640
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    .line 1641
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->isWhitespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    .line 1644
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1645
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1646
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected START_TAG or END_TAG not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1647
    sget-object v2, Lorg/xmlpull/mxp1/MXParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1646
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1647
    const/4 v2, 0x0

    .line 1645
    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1649
    :cond_1
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 1674
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1675
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1676
    const-string v3, "parser must be on START_TAG to read next text"

    .line 1675
    invoke-direct {v2, v3, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 1678
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    move-result v0

    .line 1679
    .local v0, eventType:I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 1680
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1681
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    move-result v0

    .line 1682
    if-eq v0, v4, :cond_2

    .line 1683
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1684
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TEXT must be immediately followed by END_TAG and not "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1685
    sget-object v4, Lorg/xmlpull/mxp1/MXParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1684
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1683
    invoke-direct {v2, v3, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 1688
    .end local v1           #result:Ljava/lang/String;
    :cond_1
    if-ne v0, v4, :cond_3

    .line 1689
    const-string v1, ""

    :cond_2
    return-object v1

    .line 1691
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1692
    const-string v3, "parser must be on START_TAG or TEXT to read text"

    .line 1691
    invoke-direct {v2, v3, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    .line 1700
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method protected parseAttribute()C
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1708
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v24, v0

    add-int v17, v23, v24

    .line 1709
    .local v17, prevPosStart:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v24, v0

    add-int v12, v23, v24

    .line 1710
    .local v12, nameStart:I
    const/4 v5, -0x1

    .line 1711
    .local v5, colonPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget-char v4, v23, v24

    .line 1712
    .local v4, ch:C
    const/16 v23, 0x3a

    move/from16 v0, v23

    if-ne v4, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1713
    new-instance v23, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1714
    const-string v24, "when namespaces processing enabled colon can not be at attribute name start"

    .line 1715
    const/16 v25, 0x0

    .line 1713
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v23

    .line 1718
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    const/16 v23, 0x78

    move/from16 v0, v23

    if-ne v4, v0, :cond_2

    const/16 v21, 0x1

    .line 1719
    .local v21, startsWithXmlns:Z
    :goto_0
    const/16 v22, 0x0

    .line 1721
    .local v22, xmlnsPos:I
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v4

    .line 1722
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v23

    if-nez v23, :cond_3

    .line 1765
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->ensureAttributesCapacity(I)V

    .line 1768
    const/4 v10, 0x0

    .line 1770
    .local v10, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 1771
    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 1772
    const/16 v21, 0x0

    .line 1774
    :cond_1
    if-eqz v21, :cond_d

    .line 1775
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_c

    .line 1777
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v24, v0

    sub-int v24, v5, v24

    sub-int v11, v23, v24

    .line 1778
    .local v11, nameLen:I
    if-nez v11, :cond_b

    .line 1779
    new-instance v23, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1780
    const-string v24, "namespace prefix is required after xmlns:  when namespaces are enabled"

    .line 1782
    const/16 v25, 0x0

    .line 1779
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v23

    .line 1718
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #nameLen:I
    .end local v21           #startsWithXmlns:Z
    .end local v22           #xmlnsPos:I
    :cond_2
    const/16 v21, 0x0

    goto :goto_0

    .line 1723
    .restart local v21       #startsWithXmlns:Z
    .restart local v22       #xmlnsPos:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 1724
    if-eqz v21, :cond_4

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 1725
    add-int/lit8 v22, v22, 0x1

    .line 1726
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 1727
    const/16 v23, 0x6d

    move/from16 v0, v23

    if-eq v4, v0, :cond_4

    .line 1728
    const/16 v21, 0x0

    .line 1752
    :cond_4
    :goto_2
    const/16 v23, 0x3a

    move/from16 v0, v23

    if-ne v4, v0, :cond_a

    .line 1753
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_9

    .line 1754
    new-instance v23, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1755
    const-string v24, "only one colon is allowed in attribute name when namespaces are enabled"

    .line 1757
    const/16 v25, 0x0

    .line 1754
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v23

    .line 1730
    :cond_5
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 1731
    const/16 v23, 0x6c

    move/from16 v0, v23

    if-eq v4, v0, :cond_4

    .line 1732
    const/16 v21, 0x0

    goto :goto_2

    .line 1734
    :cond_6
    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 1735
    const/16 v23, 0x6e

    move/from16 v0, v23

    if-eq v4, v0, :cond_4

    .line 1736
    const/16 v21, 0x0

    goto :goto_2

    .line 1738
    :cond_7
    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 1739
    const/16 v23, 0x73

    move/from16 v0, v23

    if-eq v4, v0, :cond_4

    .line 1740
    const/16 v21, 0x0

    goto :goto_2

    .line 1742
    :cond_8
    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 1743
    const/16 v23, 0x3a

    move/from16 v0, v23

    if-eq v4, v0, :cond_4

    .line 1744
    new-instance v23, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1745
    const-string v24, "after xmlns in attribute name must be colonwhen namespaces are enabled"

    .line 1747
    const/16 v25, 0x0

    .line 1744
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v23

    .line 1759
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v24, v0

    add-int v5, v23, v24

    .line 1762
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v4

    goto/16 :goto_1

    .line 1785
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #nameLen:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v24, v0

    sub-int v24, v5, v24

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v11}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v10

    .line 1823
    .end local v11           #nameLen:I
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v23

    if-nez v23, :cond_10

    .line 1826
    const/16 v23, 0x3d

    move/from16 v0, v23

    if-eq v4, v0, :cond_11

    .line 1827
    new-instance v23, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v24, "expected = after attribute name"

    .line 1828
    const/16 v25, 0x0

    .line 1827
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v23

    .line 1789
    :cond_d
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_e

    .line 1790
    sub-int v16, v5, v12

    .line 1791
    .local v16, prefixLen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v25, v0

    .line 1792
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v26, v0

    sub-int v26, v12, v26

    .line 1791
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 1794
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v24, v0

    sub-int v24, v5, v24

    sub-int v11, v23, v24

    .line 1795
    .restart local v11       #nameLen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v25, v0

    .line 1796
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v26, v0

    sub-int v26, v5, v26

    add-int/lit8 v26, v26, 0x1

    .line 1795
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v11}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v10

    .end local v10           #name:Ljava/lang/String;
    aput-object v10, v23, v24

    .line 1806
    .end local v11           #nameLen:I
    .end local v16           #prefixLen:I
    .restart local v10       #name:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    move/from16 v23, v0

    if-nez v23, :cond_c

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v24, v0

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v25

    aput v25, v23, v24

    goto/16 :goto_3

    .line 1801
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-object v25, v23, v24

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v25, v0

    .line 1803
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v26, v0

    sub-int v26, v12, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    .line 1804
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v28, v0

    sub-int v28, v12, v28

    sub-int v27, v27, v28

    .line 1802
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v10

    .end local v10           #name:Ljava/lang/String;
    aput-object v10, v23, v24

    .restart local v10       #name:Ljava/lang/String;
    goto :goto_4

    .line 1813
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v25, v0

    .line 1814
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v26, v0

    sub-int v26, v12, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    .line 1815
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v28, v0

    sub-int v28, v12, v28

    sub-int v27, v27, v28

    .line 1813
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v10

    .end local v10           #name:Ljava/lang/String;
    aput-object v10, v23, v24

    .line 1817
    .restart local v10       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    move/from16 v23, v0

    if-nez v23, :cond_c

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v24, v0

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v25

    aput v25, v23, v24

    goto/16 :goto_3

    .line 1824
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v4

    goto/16 :goto_3

    .line 1830
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v4

    .line 1831
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v23

    if-nez v23, :cond_12

    .line 1837
    move v6, v4

    .line 1838
    .local v6, delimit:C
    const/16 v23, 0x22

    move/from16 v0, v23

    if-eq v6, v0, :cond_13

    const/16 v23, 0x27

    move/from16 v0, v23

    if-eq v6, v0, :cond_13

    .line 1839
    new-instance v23, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1840
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "attribute value must start with quotation or apostrophe not "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1841
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1840
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1841
    const/16 v25, 0x0

    .line 1839
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v23

    .line 1832
    .end local v6           #delimit:C
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v4

    goto :goto_5

    .line 1847
    .restart local v6       #delimit:C
    :cond_13
    const/4 v13, 0x0

    .line 1848
    .local v13, normalizedCR:Z
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1849
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1850
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1853
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v4

    .line 1854
    if-ne v4, v6, :cond_14

    .line 1930
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    move/from16 v23, v0

    if-eqz v23, :cond_31

    if-eqz v21, :cond_31

    .line 1931
    const/4 v14, 0x0

    .line 1932
    .local v14, ns:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    move/from16 v23, v0

    if-nez v23, :cond_27

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v14

    .line 1937
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->ensureNamespacesCapacity(I)V

    .line 1938
    const/4 v15, -0x1

    .line 1939
    .local v15, prefixHash:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_2a

    .line 1940
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_28

    .line 1941
    new-instance v23, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1942
    const-string v24, "non-default namespace can not be declared to be empty string"

    .line 1943
    const/16 v25, 0x0

    .line 1941
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v23

    .line 1857
    .end local v14           #ns:Ljava/lang/String;
    .end local v15           #prefixHash:I
    :cond_14
    const/16 v23, 0x3c

    move/from16 v0, v23

    if-ne v4, v0, :cond_15

    .line 1858
    new-instance v23, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1859
    const-string v24, "markup not allowed inside attribute value - illegal < "

    .line 1860
    const/16 v25, 0x0

    .line 1858
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v23

    .line 1862
    :cond_15
    const/16 v23, 0x26

    move/from16 v0, v23

    if-ne v4, v0, :cond_1e

    .line 1864
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1865
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    move/from16 v23, v0

    if-nez v23, :cond_16

    .line 1866
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_18

    const/4 v8, 0x1

    .line 1867
    .local v8, hadCharData:Z
    :goto_8
    if-eqz v8, :cond_19

    .line 1869
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 1877
    .end local v8           #hadCharData:Z
    :cond_16
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseEntityRef()[C

    move-result-object v18

    .line 1879
    .local v18, resolvedEntity:[C
    if-nez v18, :cond_1a

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_17

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    move/from16 v25, v0

    .line 1882
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    .line 1881
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 1884
    :cond_17
    new-instance v23, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1885
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "could not resolve entity named \'"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\'"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1885
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1887
    const/16 v25, 0x0

    .line 1884
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v23

    .line 1866
    .end local v18           #resolvedEntity:[C
    :cond_18
    const/4 v8, 0x0

    goto :goto_8

    .line 1871
    .restart local v8       #hadCharData:Z
    :cond_19
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1872
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    goto/16 :goto_9

    .line 1891
    .end local v8           #hadCharData:Z
    .restart local v18       #resolvedEntity:[C
    :cond_1a
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_a
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1c

    .line 1927
    .end local v18           #resolvedEntity:[C
    :cond_1b
    :goto_b
    const/16 v23, 0xd

    move/from16 v0, v23

    if-ne v4, v0, :cond_26

    const/4 v13, 0x1

    .line 1852
    :goto_c
    goto/16 :goto_6

    .line 1891
    .restart local v18       #resolvedEntity:[C
    :cond_1c
    aget-char v7, v18, v23

    .line 1892
    .local v7, element:C
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1d

    .line 1893
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1895
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v26, v0

    add-int/lit8 v27, v26, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v7, v25, v26

    .line 1891
    add-int/lit8 v23, v23, 0x1

    goto :goto_a

    .line 1897
    .end local v7           #element:C
    .end local v18           #resolvedEntity:[C
    :cond_1e
    const/16 v23, 0x9

    move/from16 v0, v23

    if-eq v4, v0, :cond_1f

    const/16 v23, 0xa

    move/from16 v0, v23

    if-eq v4, v0, :cond_1f

    const/16 v23, 0xd

    move/from16 v0, v23

    if-ne v4, v0, :cond_24

    .line 1902
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    move/from16 v23, v0

    if-nez v23, :cond_20

    .line 1903
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1904
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_23

    .line 1905
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 1912
    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_21

    .line 1913
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1915
    :cond_21
    const/16 v23, 0xa

    move/from16 v0, v23

    if-ne v4, v0, :cond_22

    if-nez v13, :cond_1b

    .line 1916
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v25, 0x20

    aput-char v25, v23, v24

    goto/16 :goto_b

    .line 1907
    :cond_23
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1908
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    goto :goto_d

    .line 1920
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1b

    .line 1921
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_25

    .line 1922
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1924
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v4, v23, v24

    goto/16 :goto_b

    .line 1927
    :cond_26
    const/4 v13, 0x0

    goto/16 :goto_c

    .line 1935
    .restart local v14       #ns:Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 1946
    .restart local v15       #prefixHash:I
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    move/from16 v24, v0

    aput-object v10, v23, v24

    .line 1947
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    move/from16 v23, v0

    if-nez v23, :cond_29

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    move/from16 v24, v0

    .line 1949
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v15

    .line 1948
    .end local v15           #prefixHash:I
    aput v15, v23, v24

    .line 1959
    .restart local v15       #prefixHash:I
    :cond_29
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    move/from16 v24, v0

    aput-object v14, v23, v24

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget v20, v23, v24

    .line 1963
    .local v20, startNs:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    move/from16 v23, v0

    add-int/lit8 v9, v23, -0x1

    .local v9, i:I
    :goto_f
    move/from16 v0, v20

    if-ge v9, v0, :cond_2b

    .line 1976
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    .line 1988
    .end local v9           #i:I
    .end local v14           #ns:Ljava/lang/String;
    .end local v15           #prefixHash:I
    .end local v20           #startNs:I
    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1989
    return v4

    .line 1953
    .restart local v14       #ns:Ljava/lang/String;
    .restart local v15       #prefixHash:I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    move/from16 v24, v0

    const/16 v25, 0x0

    aput-object v25, v23, v24

    .line 1955
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    move/from16 v23, v0

    if-nez v23, :cond_29

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    move/from16 v24, v0

    const/4 v15, -0x1

    aput v15, v23, v24

    goto :goto_e

    .line 1964
    .restart local v9       #i:I
    .restart local v20       #startNs:I
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    move/from16 v23, v0

    if-nez v23, :cond_2c

    if-nez v10, :cond_2d

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    move-object/from16 v0, v23

    if-eq v0, v10, :cond_2e

    .line 1965
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    move/from16 v23, v0

    if-nez v23, :cond_30

    if-eqz v10, :cond_30

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    move/from16 v0, v23

    if-ne v0, v15, :cond_30

    .line 1967
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_30

    .line 1968
    :cond_2e
    if-nez v10, :cond_2f

    const-string v19, "default"

    .line 1970
    .local v19, s:Ljava/lang/String;
    :goto_11
    new-instance v23, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1971
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "duplicated namespace declaration for "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1972
    const-string v25, " prefix"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1971
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1972
    const/16 v25, 0x0

    .line 1970
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v23

    .line 1968
    .end local v19           #s:Ljava/lang/String;
    :cond_2f
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\'"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1969
    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_11

    .line 1963
    :cond_30
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_f

    .line 1979
    .end local v9           #i:I
    .end local v14           #ns:Ljava/lang/String;
    .end local v15           #prefixHash:I
    .end local v20           #startNs:I
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    move/from16 v23, v0

    if-nez v23, :cond_32

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v24, v0

    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v28, v0

    .line 1981
    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    invoke-direct/range {v25 .. v28}, Ljava/lang/String;-><init>([CII)V

    .line 1980
    aput-object v25, v23, v24

    .line 1986
    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    goto/16 :goto_10

    .line 1983
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v24, v0

    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    move/from16 v28, v0

    .line 1984
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    invoke-direct/range {v25 .. v28}, Ljava/lang/String;-><init>([CII)V

    .line 1983
    aput-object v25, v23, v24

    goto :goto_12
.end method

.method protected parseCDSect(Z)V
    .locals 14
    .parameter "hadCharData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x41

    const/16 v12, 0xa

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 2002
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2003
    .local v1, ch:C
    const/16 v10, 0x43

    if-eq v1, v10, :cond_0

    .line 2004
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2005
    const-string v10, "expected <[CDATA[ for comment start"

    .line 2004
    invoke-direct {v9, v10, p0, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v9

    .line 2007
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2008
    const/16 v10, 0x44

    if-eq v1, v10, :cond_1

    .line 2009
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2010
    const-string v10, "expected <[CDATA[ for comment start"

    .line 2009
    invoke-direct {v9, v10, p0, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v9

    .line 2012
    :cond_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2013
    if-eq v1, v13, :cond_2

    .line 2014
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2015
    const-string v10, "expected <[CDATA[ for comment start"

    .line 2014
    invoke-direct {v9, v10, p0, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v9

    .line 2017
    :cond_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2018
    const/16 v10, 0x54

    if-eq v1, v10, :cond_3

    .line 2019
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2020
    const-string v10, "expected <[CDATA[ for comment start"

    .line 2019
    invoke-direct {v9, v10, p0, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v9

    .line 2022
    :cond_3
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2023
    if-eq v1, v13, :cond_4

    .line 2024
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2025
    const-string v10, "expected <[CDATA[ for comment start"

    .line 2024
    invoke-direct {v9, v10, p0, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v9

    .line 2027
    :cond_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2028
    const/16 v10, 0x5b

    if-eq v1, v10, :cond_5

    .line 2029
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2030
    const-string v10, "expected <![CDATA[ for comment start"

    .line 2029
    invoke-direct {v9, v10, p0, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v9

    .line 2034
    :cond_5
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int v0, v10, v11

    .line 2035
    .local v0, cdStart:I
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 2036
    .local v3, curLine:I
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 2037
    .local v2, curColumn:I
    iget-boolean v10, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v10, :cond_b

    .line 2038
    iget-boolean v10, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-eqz v10, :cond_b

    .line 2040
    .local v5, normalizeInput:Z
    :goto_0
    if-eqz v5, :cond_6

    .line 2041
    if-eqz p1, :cond_6

    .line 2042
    :try_start_0
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v9, :cond_6

    .line 2044
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v9, v10, :cond_c

    .line 2045
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 2053
    :cond_6
    :goto_1
    const/4 v7, 0x0

    .line 2054
    .local v7, seenBracket:Z
    const/4 v8, 0x0

    .line 2055
    .local v8, seenBracketBracket:Z
    const/4 v6, 0x0

    .line 2058
    .local v6, normalizedCR:Z
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2059
    const/16 v9, 0x5d

    if-ne v1, v9, :cond_e

    .line 2060
    if-nez v7, :cond_d

    .line 2061
    const/4 v7, 0x1

    .line 2078
    :cond_8
    :goto_3
    if-eqz v5, :cond_7

    .line 2080
    const/16 v9, 0xd

    if-ne v1, v9, :cond_13

    .line 2081
    const/4 v6, 0x1

    .line 2082
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v9, v0, v9

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2083
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2084
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v9, :cond_9

    .line 2085
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v9, v10, :cond_12

    .line 2086
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 2093
    :cond_9
    :goto_4
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v9, v10, :cond_a

    .line 2094
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v9}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2096
    :cond_a
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v11, 0xa

    aput-char v11, v9, v10
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2116
    .end local v6           #normalizedCR:Z
    .end local v7           #seenBracket:Z
    .end local v8           #seenBracketBracket:Z
    :catch_0
    move-exception v4

    .line 2118
    .local v4, ex:Ljava/io/EOFException;
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CDATA section started on line "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and column "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was not closed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2118
    invoke-direct {v9, v10, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v9

    .end local v4           #ex:Ljava/io/EOFException;
    .end local v5           #normalizeInput:Z
    :cond_b
    move v5, v9

    .line 2038
    goto :goto_0

    .line 2047
    .restart local v5       #normalizeInput:Z
    :cond_c
    const/4 v9, 0x1

    :try_start_1
    iput-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2048
    const/4 v9, 0x0

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2063
    .restart local v6       #normalizedCR:Z
    .restart local v7       #seenBracket:Z
    .restart local v8       #seenBracketBracket:Z
    :cond_d
    const/4 v8, 0x1

    goto :goto_3

    .line 2066
    :cond_e
    const/16 v9, 0x3e

    if-ne v1, v9, :cond_11

    .line 2067
    if-eqz v7, :cond_10

    if-eqz v8, :cond_10

    .line 2122
    if-eqz v5, :cond_f

    .line 2123
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v9, :cond_f

    .line 2124
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v9, -0x2

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 2127
    :cond_f
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v9, v0, v9

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2128
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v9, v9, -0x3

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2129
    return-void

    .line 2070
    :cond_10
    const/4 v8, 0x0

    .line 2072
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 2074
    :cond_11
    if-eqz v7, :cond_8

    .line 2075
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 2088
    :cond_12
    const/4 v9, 0x1

    :try_start_2
    iput-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2089
    const/4 v9, 0x0

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    goto :goto_4

    .line 2097
    :cond_13
    if-ne v1, v12, :cond_16

    .line 2098
    if-nez v6, :cond_15

    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v9, :cond_15

    .line 2099
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v9, v10, :cond_14

    .line 2100
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v9}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2102
    :cond_14
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v11, 0xa

    aput-char v11, v9, v10

    .line 2104
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 2106
    :cond_16
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v9, :cond_18

    .line 2107
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v9, v10, :cond_17

    .line 2108
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v9}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2110
    :cond_17
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v1, v9, v10
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2112
    :cond_18
    const/4 v6, 0x0

    .line 2056
    goto/16 :goto_2
.end method

.method protected parseComment()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3e

    const/16 v12, 0x2d

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/16 v11, 0xa

    .line 2135
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2136
    .local v0, ch:C
    if-eq v0, v12, :cond_0

    .line 2137
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "expected <!-- for comment start"

    .line 2138
    const/4 v10, 0x0

    .line 2137
    invoke-direct {v8, v9, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v8

    .line 2140
    :cond_0
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v9, :cond_1

    .line 2141
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2144
    :cond_1
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 2145
    .local v2, curLine:I
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 2147
    .local v1, curColumn:I
    :try_start_0
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v9, :cond_3

    .line 2148
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v9, :cond_3

    .line 2149
    .local v4, normalizeIgnorableWS:Z
    :goto_0
    const/4 v5, 0x0

    .line 2151
    .local v5, normalizedCR:Z
    const/4 v6, 0x0

    .line 2152
    .local v6, seenDash:Z
    const/4 v7, 0x0

    .line 2155
    .local v7, seenDashDash:Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2156
    if-eqz v7, :cond_4

    if-eq v0, v13, :cond_4

    .line 2157
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2158
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "in comment after two dashes (--) next character must be > not "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2158
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2159
    const/4 v10, 0x0

    .line 2157
    invoke-direct {v8, v9, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v8
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2218
    .end local v4           #normalizeIgnorableWS:Z
    .end local v5           #normalizedCR:Z
    .end local v6           #seenDash:Z
    .end local v7           #seenDashDash:Z
    :catch_0
    move-exception v3

    .line 2220
    .local v3, ex:Ljava/io/EOFException;
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "comment started on line "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2221
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and column "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was not closed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2220
    invoke-direct {v8, v9, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v8

    .end local v3           #ex:Ljava/io/EOFException;
    :cond_3
    move v4, v8

    .line 2148
    goto :goto_0

    .line 2161
    .restart local v4       #normalizeIgnorableWS:Z
    .restart local v5       #normalizedCR:Z
    .restart local v6       #seenDash:Z
    .restart local v7       #seenDashDash:Z
    :cond_4
    if-ne v0, v12, :cond_8

    .line 2162
    if-nez v6, :cond_7

    .line 2163
    const/4 v6, 0x1

    .line 2178
    :goto_2
    if-eqz v4, :cond_2

    .line 2179
    const/16 v8, 0xd

    if-ne v0, v8, :cond_d

    .line 2180
    const/4 v5, 0x1

    .line 2184
    :try_start_1
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v8, :cond_5

    .line 2185
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2186
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v8, v9, :cond_c

    .line 2187
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 2194
    :cond_5
    :goto_3
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v8, v9, :cond_6

    .line 2195
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v8}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2197
    :cond_6
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v10, 0xa

    aput-char v10, v8, v9
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2165
    :cond_7
    const/4 v7, 0x1

    .line 2166
    const/4 v6, 0x0

    goto :goto_2

    .line 2168
    :cond_8
    if-ne v0, v13, :cond_b

    .line 2169
    if-eqz v7, :cond_a

    .line 2224
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v8, :cond_9

    .line 2225
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v8, v8, -0x3

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2226
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v8, :cond_9

    .line 2227
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v8, v8, -0x2

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 2230
    :cond_9
    return-void

    .line 2172
    :cond_a
    const/4 v7, 0x0

    .line 2174
    const/4 v6, 0x0

    goto :goto_2

    .line 2176
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 2189
    :cond_c
    const/4 v8, 0x1

    :try_start_2
    iput-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2190
    const/4 v8, 0x0

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    goto :goto_3

    .line 2198
    :cond_d
    if-ne v0, v11, :cond_10

    .line 2199
    if-nez v5, :cond_f

    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v8, :cond_f

    .line 2200
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v8, v9, :cond_e

    .line 2201
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v8}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2203
    :cond_e
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v10, 0xa

    aput-char v10, v8, v9

    .line 2205
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2207
    :cond_10
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v8, :cond_12

    .line 2208
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v8, v9, :cond_11

    .line 2209
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v8}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2211
    :cond_11
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v0, v8, v9
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2213
    :cond_12
    const/4 v5, 0x0

    .line 2153
    goto/16 :goto_1
.end method

.method protected parseDocdecl()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v9, 0xa

    const/4 v7, 0x0

    .line 2234
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2235
    .local v1, ch:C
    const/16 v6, 0x4f

    if-eq v1, v6, :cond_0

    .line 2236
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "expected <!DOCTYPE"

    invoke-direct {v4, v5, p0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2238
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2239
    const/16 v6, 0x43

    if-eq v1, v6, :cond_1

    .line 2240
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "expected <!DOCTYPE"

    invoke-direct {v4, v5, p0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2242
    :cond_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2243
    const/16 v6, 0x54

    if-eq v1, v6, :cond_2

    .line 2244
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "expected <!DOCTYPE"

    invoke-direct {v4, v5, p0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2246
    :cond_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2247
    const/16 v6, 0x59

    if-eq v1, v6, :cond_3

    .line 2248
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "expected <!DOCTYPE"

    invoke-direct {v4, v5, p0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2250
    :cond_3
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2251
    const/16 v6, 0x50

    if-eq v1, v6, :cond_4

    .line 2252
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "expected <!DOCTYPE"

    invoke-direct {v4, v5, p0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2254
    :cond_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2255
    const/16 v6, 0x45

    if-eq v1, v6, :cond_5

    .line 2256
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "expected <!DOCTYPE"

    invoke-direct {v4, v5, p0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2258
    :cond_5
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2263
    const/4 v0, 0x0

    .line 2264
    .local v0, bracketLevel:I
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v6, :cond_9

    .line 2265
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v6, :cond_9

    move v2, v4

    .line 2266
    .local v2, normalizeIgnorableWS:Z
    :goto_0
    const/4 v3, 0x0

    .line 2268
    .local v3, normalizedCR:Z
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2269
    const/16 v6, 0x5b

    if-ne v1, v6, :cond_7

    .line 2270
    add-int/lit8 v0, v0, 0x1

    .line 2272
    :cond_7
    const/16 v6, 0x5d

    if-ne v1, v6, :cond_8

    .line 2273
    add-int/lit8 v0, v0, -0x1

    .line 2275
    :cond_8
    const/16 v6, 0x3e

    if-ne v1, v6, :cond_a

    if-nez v0, :cond_a

    .line 2318
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2319
    return-void

    .end local v2           #normalizeIgnorableWS:Z
    .end local v3           #normalizedCR:Z
    :cond_9
    move v2, v5

    .line 2265
    goto :goto_0

    .line 2278
    .restart local v2       #normalizeIgnorableWS:Z
    .restart local v3       #normalizedCR:Z
    :cond_a
    if-eqz v2, :cond_6

    .line 2279
    const/16 v6, 0xd

    if-ne v1, v6, :cond_e

    .line 2280
    const/4 v3, 0x1

    .line 2284
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v6, :cond_b

    .line 2285
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2286
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v6, v7, :cond_d

    .line 2287
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 2294
    :cond_b
    :goto_2
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v7, v7

    if-lt v6, v7, :cond_c

    .line 2295
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2297
    :cond_c
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v9, v6, v7

    goto :goto_1

    .line 2289
    :cond_d
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2290
    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    goto :goto_2

    .line 2298
    :cond_e
    if-ne v1, v9, :cond_11

    .line 2299
    if-nez v3, :cond_10

    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v6, :cond_10

    .line 2300
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v7, v7

    if-lt v6, v7, :cond_f

    .line 2301
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2303
    :cond_f
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v9, v6, v7

    .line 2305
    :cond_10
    const/4 v3, 0x0

    goto :goto_1

    .line 2307
    :cond_11
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v6, :cond_13

    .line 2308
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v7, v7

    if-lt v6, v7, :cond_12

    .line 2309
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2311
    :cond_12
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v1, v6, v7

    .line 2313
    :cond_13
    const/4 v3, 0x0

    .line 2267
    goto/16 :goto_1
.end method

.method public parseEndTag()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 2324
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2325
    .local v1, ch:C
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2326
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "expected name start and not "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2327
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2326
    invoke-direct {v9, v10, p0, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v9

    .line 2329
    :cond_0
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v9, v9, -0x3

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2330
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int v5, v9, v10

    .line 2332
    .local v5, nameStart:I
    :cond_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2333
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v9

    .line 2331
    if-nez v9, :cond_1

    .line 2342
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v6, v5, v9

    .line 2344
    .local v6, off:I
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v9, v9, -0x1

    sub-int v4, v9, v6

    .line 2345
    .local v4, len:I
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v9, v10

    .line 2346
    .local v0, cbuf:[C
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v9, v9, v10

    if-eq v9, v4, :cond_2

    .line 2348
    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v9, v9, v10

    invoke-direct {v8, v0, v11, v9}, Ljava/lang/String;-><init>([CII)V

    .line 2349
    .local v8, startname:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    invoke-direct {v2, v9, v6, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2350
    .local v2, endname:Ljava/lang/String;
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "end tag name </"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2351
    const-string v11, "> must match start tag name <"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2352
    const-string v11, " from line "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2350
    invoke-direct {v9, v10, p0, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v9

    .line 2354
    .end local v2           #endname:Ljava/lang/String;
    .end local v8           #startname:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    move v7, v6

    .end local v6           #off:I
    .local v7, off:I
    :goto_0
    if-lt v3, v4, :cond_3

    .line 2365
    :goto_1
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v9

    if-nez v9, :cond_5

    .line 2368
    const/16 v9, 0x3e

    if-eq v1, v9, :cond_6

    .line 2369
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2370
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "expected > to finish end tag not "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2371
    const-string v11, " from line "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2370
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2369
    invoke-direct {v9, v10, p0, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v9

    .line 2355
    :cond_3
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7           #off:I
    .restart local v6       #off:I
    aget-char v9, v9, v7

    aget-char v10, v0, v3

    if-eq v9, v10, :cond_4

    .line 2357
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0, v11, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2358
    .restart local v8       #startname:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v10, v6, v3

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v2, v9, v10, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2359
    .restart local v2       #endname:Ljava/lang/String;
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "end tag name </"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2360
    const-string v11, "> must be the same as start tag <"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2361
    const-string v11, " from line "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2359
    invoke-direct {v9, v10, p0, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v9

    .line 2354
    .end local v2           #endname:Ljava/lang/String;
    .end local v8           #startname:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v7, v6

    .end local v6           #off:I
    .restart local v7       #off:I
    goto/16 :goto_0

    .line 2366
    :cond_5
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    goto/16 :goto_1

    .line 2376
    :cond_6
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2377
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    .line 2378
    const/4 v9, 0x3

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v9
.end method

.method protected parseEntityRef()[C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x74

    const/16 v9, 0x61

    const/16 v8, 0x3b

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 2388
    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 2389
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2390
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2391
    .local v0, ch:C
    const/16 v5, 0x23

    if-ne v0, v5, :cond_9

    .line 2393
    const/4 v1, 0x0

    .line 2394
    .local v1, charRef:C
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2395
    const/16 v5, 0x78

    if-ne v0, v5, :cond_7

    .line 2398
    :goto_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2399
    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    .line 2400
    mul-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v0, -0x30

    add-int/2addr v5, v6

    int-to-char v1, v5

    goto :goto_0

    .line 2401
    :cond_0
    if-lt v0, v9, :cond_1

    const/16 v5, 0x66

    if-gt v0, v5, :cond_1

    .line 2402
    mul-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v0, -0x57

    add-int/2addr v5, v6

    int-to-char v1, v5

    goto :goto_0

    .line 2403
    :cond_1
    const/16 v5, 0x41

    if-lt v0, v5, :cond_2

    const/16 v5, 0x46

    if-gt v0, v5, :cond_2

    .line 2404
    mul-int/lit8 v5, v1, 0x10

    add-int/lit8 v6, v0, -0x37

    add-int/2addr v5, v6

    int-to-char v1, v5

    goto :goto_0

    .line 2405
    :cond_2
    if-ne v0, v8, :cond_6

    .line 2428
    :cond_3
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2429
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    aput-char v1, v4, v7

    .line 2430
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v4, :cond_4

    .line 2431
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v7, v5}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2433
    :cond_4
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    .line 2505
    .end local v1           #charRef:C
    :cond_5
    :goto_1
    return-object v3

    .line 2408
    .restart local v1       #charRef:C
    :cond_6
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2409
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "character reference (with hex value) may not contain "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2410
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2409
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2408
    invoke-direct {v5, v6, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 2416
    :cond_7
    :goto_2
    const/16 v5, 0x30

    if-lt v0, v5, :cond_8

    const/16 v5, 0x39

    if-gt v0, v5, :cond_8

    .line 2417
    mul-int/lit8 v5, v1, 0xa

    add-int/lit8 v6, v0, -0x30

    add-int/2addr v5, v6

    int-to-char v1, v5

    .line 2425
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2415
    goto :goto_2

    .line 2418
    :cond_8
    if-eq v0, v8, :cond_3

    .line 2421
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2422
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "character reference (with decimal value) may not contain "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2422
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2421
    invoke-direct {v5, v6, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 2437
    .end local v1           #charRef:C
    :cond_9
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2438
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2439
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "entity reference names can not start with character \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2440
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2439
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2438
    invoke-direct {v5, v6, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 2443
    :cond_a
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2444
    if-ne v0, v8, :cond_c

    .line 2453
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2455
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int v2, v5, v6

    .line 2456
    .local v2, len:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_d

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    aget-char v5, v5, v6

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_d

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/lit8 v6, v6, 0x1

    aget-char v5, v5, v6

    if-ne v5, v10, :cond_d

    .line 2457
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v4, :cond_b

    .line 2458
    const-string v4, "<"

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2460
    :cond_b
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v5, 0x3c

    aput-char v5, v4, v7

    .line 2461
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    goto/16 :goto_1

    .line 2447
    .end local v2           #len:I
    :cond_c
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2448
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2449
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "entity reference name can not contain character "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2450
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2449
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2448
    invoke-direct {v5, v6, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 2466
    .restart local v2       #len:I
    :cond_d
    const/4 v5, 0x3

    if-ne v2, v5, :cond_f

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    aget-char v5, v5, v6

    if-ne v5, v9, :cond_f

    .line 2467
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/lit8 v6, v6, 0x1

    aget-char v5, v5, v6

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_f

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/lit8 v6, v6, 0x2

    aget-char v5, v5, v6

    const/16 v6, 0x70

    if-ne v5, v6, :cond_f

    .line 2468
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v4, :cond_e

    .line 2469
    const-string v4, "&"

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2471
    :cond_e
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v5, 0x26

    aput-char v5, v4, v7

    .line 2472
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    goto/16 :goto_1

    .line 2473
    :cond_f
    const/4 v5, 0x2

    if-ne v2, v5, :cond_11

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    aget-char v5, v5, v6

    const/16 v6, 0x67

    if-ne v5, v6, :cond_11

    .line 2474
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/lit8 v6, v6, 0x1

    aget-char v5, v5, v6

    if-ne v5, v10, :cond_11

    .line 2475
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v4, :cond_10

    .line 2476
    const-string v4, ">"

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2478
    :cond_10
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v5, 0x3e

    aput-char v5, v4, v7

    .line 2479
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    goto/16 :goto_1

    .line 2480
    :cond_11
    const/4 v5, 0x4

    if-ne v2, v5, :cond_13

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    aget-char v5, v5, v6

    if-ne v5, v9, :cond_13

    .line 2481
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/lit8 v6, v6, 0x1

    aget-char v5, v5, v6

    const/16 v6, 0x70

    if-ne v5, v6, :cond_13

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/lit8 v6, v6, 0x2

    aget-char v5, v5, v6

    const/16 v6, 0x6f

    if-ne v5, v6, :cond_13

    .line 2482
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/lit8 v6, v6, 0x3

    aget-char v5, v5, v6

    const/16 v6, 0x73

    if-ne v5, v6, :cond_13

    .line 2483
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v4, :cond_12

    .line 2484
    const-string v4, "\'"

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2486
    :cond_12
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v5, 0x27

    aput-char v5, v4, v7

    .line 2487
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    goto/16 :goto_1

    .line 2488
    :cond_13
    const/4 v5, 0x4

    if-ne v2, v5, :cond_15

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    aget-char v5, v5, v6

    const/16 v6, 0x71

    if-ne v5, v6, :cond_15

    .line 2489
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/lit8 v6, v6, 0x1

    aget-char v5, v5, v6

    const/16 v6, 0x75

    if-ne v5, v6, :cond_15

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/lit8 v6, v6, 0x2

    aget-char v5, v5, v6

    const/16 v6, 0x6f

    if-ne v5, v6, :cond_15

    .line 2490
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/lit8 v6, v6, 0x3

    aget-char v5, v5, v6

    if-ne v5, v10, :cond_15

    .line 2491
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v4, :cond_14

    .line 2492
    const-string v4, "\""

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2494
    :cond_14
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v5, 0x22

    aput-char v5, v4, v7

    .line 2495
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    goto/16 :goto_1

    .line 2497
    :cond_15
    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->lookuEntityReplacement(I)[C

    move-result-object v3

    .line 2498
    .local v3, result:[C
    if-nez v3, :cond_5

    .line 2502
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v5, :cond_16

    .line 2503
    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    :cond_16
    move-object v3, v4

    .line 2505
    goto/16 :goto_1
.end method

.method protected parseEpilog()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v3, 0x0

    const/16 v7, 0xa

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 2510
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    if-ne v8, v5, :cond_0

    .line 2511
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2512
    const-string v6, "already reached end of XML input"

    .line 2511
    invoke-direct {v5, v6, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 2514
    :cond_0
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    if-eqz v8, :cond_1

    .line 2515
    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    .line 2650
    :goto_0
    return v5

    .line 2517
    :cond_1
    const/4 v2, 0x0

    .line 2518
    .local v2, gotS:Z
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v8, :cond_2

    .line 2519
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v8, :cond_2

    move v3, v5

    .line 2520
    .local v3, normalizeIgnorableWS:Z
    :cond_2
    const/4 v4, 0x0

    .line 2524
    .local v4, normalizedCR:Z
    :try_start_0
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    if-eqz v8, :cond_4

    .line 2525
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v9, v9, -0x1

    aget-char v0, v8, v9

    .line 2529
    .local v0, ch:C
    :goto_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 2530
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2531
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    if-nez v8, :cond_6

    .line 2535
    :cond_3
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_e

    .line 2536
    if-eqz v2, :cond_5

    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v8, :cond_5

    .line 2537
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2538
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 2539
    const/4 v7, 0x7

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    move v5, v6

    goto :goto_0

    .line 2527
    .end local v0           #ch:C
    :cond_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .restart local v0       #ch:C
    goto :goto_1

    .line 2541
    :cond_5
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2542
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_7

    .line 2645
    .end local v0           #ch:C
    :cond_6
    :goto_2
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    if-eqz v7, :cond_1b

    .line 2646
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v7, :cond_1a

    if-eqz v2, :cond_1a

    .line 2647
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2648
    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    move v5, v6

    goto :goto_0

    .line 2545
    .restart local v0       #ch:C
    :cond_7
    const/16 v8, 0x3f

    if-ne v0, v8, :cond_8

    .line 2548
    :try_start_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parsePI()Z

    .line 2549
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v8, :cond_11

    .line 2550
    const/16 v7, 0x8

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    move v5, v7

    goto :goto_0

    .line 2553
    :cond_8
    const/16 v8, 0x21

    if-ne v0, v8, :cond_b

    .line 2554
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2555
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    if-nez v8, :cond_6

    .line 2558
    const/16 v8, 0x44

    if-ne v0, v8, :cond_9

    .line 2559
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseDocdecl()V

    .line 2560
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v8, :cond_11

    .line 2561
    const/16 v8, 0xa

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    move v5, v7

    goto/16 :goto_0

    .line 2563
    :cond_9
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_a

    .line 2564
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseComment()V

    .line 2565
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v8, :cond_11

    .line 2566
    const/16 v7, 0x9

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    move v5, v7

    goto/16 :goto_0

    .line 2569
    :cond_a
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2570
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unexpected markup <!"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2571
    const/4 v9, 0x0

    .line 2569
    invoke-direct {v7, v8, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2642
    .end local v0           #ch:C
    :catch_0
    move-exception v1

    .line 2643
    .local v1, ex:Ljava/io/EOFException;
    iput-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    goto :goto_2

    .line 2573
    .end local v1           #ex:Ljava/io/EOFException;
    .restart local v0       #ch:C
    :cond_b
    const/16 v7, 0x2f

    if-ne v0, v7, :cond_c

    .line 2574
    :try_start_2
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2575
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "end tag not allowed in epilog but got "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2576
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2575
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2576
    const/4 v9, 0x0

    .line 2574
    invoke-direct {v7, v8, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7

    .line 2577
    :cond_c
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2578
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2579
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "start tag not allowed in epilog but got "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2580
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2579
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2580
    const/4 v9, 0x0

    .line 2578
    invoke-direct {v7, v8, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7

    .line 2582
    :cond_d
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2583
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "in epilog expected ignorable content and not "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2584
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2583
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2584
    const/4 v9, 0x0

    .line 2582
    invoke-direct {v7, v8, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7

    .line 2586
    :cond_e
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2587
    const/4 v2, 0x1

    .line 2588
    if-eqz v3, :cond_11

    .line 2589
    const/16 v8, 0xd

    if-ne v0, v8, :cond_13

    .line 2590
    const/4 v4, 0x1

    .line 2594
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v8, :cond_f

    .line 2595
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2596
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v8, v9, :cond_12

    .line 2597
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 2604
    :cond_f
    :goto_3
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v8, v9, :cond_10

    .line 2605
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v8}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2607
    :cond_10
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v10, 0xa

    aput-char v10, v8, v9

    .line 2631
    :cond_11
    :goto_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2632
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    if-eqz v8, :cond_3

    goto/16 :goto_2

    .line 2599
    :cond_12
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2600
    const/4 v8, 0x0

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    goto :goto_3

    .line 2608
    :cond_13
    if-ne v0, v7, :cond_16

    .line 2609
    if-nez v4, :cond_15

    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v8, :cond_15

    .line 2610
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v8, v9, :cond_14

    .line 2611
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v8}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2613
    :cond_14
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v10, 0xa

    aput-char v10, v8, v9

    .line 2615
    :cond_15
    const/4 v4, 0x0

    goto :goto_4

    .line 2617
    :cond_16
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v8, :cond_18

    .line 2618
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v8, v9, :cond_17

    .line 2619
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v8}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2621
    :cond_17
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v0, v8, v9

    .line 2623
    :cond_18
    const/4 v4, 0x0

    goto :goto_4

    .line 2627
    :cond_19
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2628
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "in epilog non whitespace content is not allowed but got "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2629
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2628
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2629
    const/4 v9, 0x0

    .line 2627
    invoke-direct {v7, v8, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2650
    .end local v0           #ch:C
    :cond_1a
    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto/16 :goto_0

    .line 2652
    :cond_1b
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "internal error in parseEpilog"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected parsePI()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2662
    iget-boolean v11, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v11, :cond_0

    .line 2663
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2665
    :cond_0
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 2666
    .local v2, curLine:I
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 2667
    .local v1, curColumn:I
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int v9, v11, v12

    .line 2668
    .local v9, piTargetStart:I
    const/4 v8, -0x1

    .line 2669
    .local v8, piTargetEnd:I
    iget-boolean v11, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v11, :cond_1

    .line 2670
    iget-boolean v11, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v11, :cond_1

    const/4 v5, 0x1

    .line 2671
    .local v5, normalizeIgnorableWS:Z
    :goto_0
    const/4 v6, 0x0

    .line 2674
    .local v6, normalizedCR:Z
    const/4 v10, 0x0

    .line 2675
    .local v10, seenQ:Z
    :try_start_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2676
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2677
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2678
    const-string v12, "processing instruction PITarget must be exactly after <? and not white space character"

    .line 2679
    const/4 v13, 0x0

    .line 2677
    invoke-direct {v11, v12, p0, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v11
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2771
    .end local v0           #ch:C
    :catch_0
    move-exception v3

    .line 2773
    .local v3, ex:Ljava/io/EOFException;
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2774
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "processing instruction started on line "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2775
    const-string v13, " and column "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " was not closed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2774
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2773
    invoke-direct {v11, v12, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v11

    .line 2670
    .end local v3           #ex:Ljava/io/EOFException;
    .end local v5           #normalizeIgnorableWS:Z
    .end local v6           #normalizedCR:Z
    .end local v10           #seenQ:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2685
    .restart local v0       #ch:C
    .restart local v5       #normalizeIgnorableWS:Z
    .restart local v6       #normalizedCR:Z
    .restart local v10       #seenQ:Z
    :cond_2
    :goto_1
    const/16 v11, 0x3f

    if-ne v0, v11, :cond_6

    .line 2686
    const/4 v10, 0x1

    .line 2731
    :goto_2
    if-eqz v5, :cond_5

    .line 2732
    const/16 v11, 0xd

    if-ne v0, v11, :cond_13

    .line 2733
    const/4 v6, 0x1

    .line 2737
    :try_start_1
    iget-boolean v11, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v11, :cond_3

    .line 2738
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2739
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v11, v12, :cond_12

    .line 2740
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 2747
    :cond_3
    :goto_3
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v12, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v12, v12

    if-lt v11, v12, :cond_4

    .line 2748
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v11}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2750
    :cond_4
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v13, 0xa

    aput-char v13, v11, v12

    .line 2769
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 2681
    goto :goto_1

    .line 2687
    :cond_6
    const/16 v11, 0x3e

    if-ne v0, v11, :cond_a

    .line 2688
    if-eqz v10, :cond_9

    .line 2778
    const/4 v11, -0x1

    if-ne v8, v11, :cond_7

    .line 2779
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v11, v11, -0x2

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int v8, v11, v12

    .line 2783
    :cond_7
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v9, v11

    .line 2784
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v8, v11

    .line 2785
    iget-boolean v11, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v11, :cond_8

    .line 2786
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v11, v11, -0x2

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2787
    if-eqz v5, :cond_8

    .line 2788
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 2791
    :cond_8
    const/4 v11, 0x1

    :goto_5
    return v11

    .line 2691
    :cond_9
    const/4 v10, 0x0

    goto :goto_2

    .line 2693
    :cond_a
    const/4 v11, -0x1

    if-ne v8, v11, :cond_11

    :try_start_2
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2694
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int v8, v11, v12

    .line 2698
    sub-int v11, v8, v9

    const/4 v12, 0x3

    if-ne v11, v12, :cond_11

    .line 2699
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v11, v11, v9

    const/16 v12, 0x78

    if-eq v11, v12, :cond_b

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v11, v11, v9

    const/16 v12, 0x58

    if-ne v11, v12, :cond_11

    .line 2700
    :cond_b
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v12, v9, 0x1

    aget-char v11, v11, v12

    const/16 v12, 0x6d

    if-eq v11, v12, :cond_c

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v12, v9, 0x1

    aget-char v11, v11, v12

    const/16 v12, 0x4d

    if-ne v11, v12, :cond_11

    .line 2701
    :cond_c
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v12, v9, 0x2

    aget-char v11, v11, v12

    const/16 v12, 0x6c

    if-eq v11, v12, :cond_d

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v12, v9, 0x2

    aget-char v11, v11, v12

    const/16 v12, 0x4c

    if-ne v11, v12, :cond_11

    .line 2702
    :cond_d
    const/4 v11, 0x3

    if-le v9, v11, :cond_e

    .line 2705
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2706
    const-string v12, "processing instruction can not have PITarget with reserveld xml name"

    .line 2707
    const/4 v13, 0x0

    .line 2705
    invoke-direct {v11, v12, p0, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v11

    .line 2709
    :cond_e
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v11, v11, v9

    const/16 v12, 0x78

    if-eq v11, v12, :cond_f

    .line 2710
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v12, v9, 0x1

    aget-char v11, v11, v12

    const/16 v12, 0x6d

    if-eq v11, v12, :cond_f

    .line 2711
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v12, v9, 0x2

    aget-char v11, v11, v12

    const/16 v12, 0x6c

    if-eq v11, v12, :cond_f

    .line 2712
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2713
    const-string v12, "XMLDecl must have xml name in lowercase"

    .line 2714
    const/4 v13, 0x0

    .line 2712
    invoke-direct {v11, v12, p0, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v11

    .line 2717
    :cond_f
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->parseXmlDecl(C)V

    .line 2718
    iget-boolean v11, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v11, :cond_10

    .line 2719
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v11, v11, -0x2

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2722
    :cond_10
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    .line 2721
    sub-int v11, v9, v11

    add-int/lit8 v7, v11, 0x3

    .line 2723
    .local v7, off:I
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v11, v11, -0x2

    sub-int v4, v11, v7

    .line 2724
    .local v4, len:I
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    invoke-virtual {p0, v11, v7, v4}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclContent:Ljava/lang/String;

    .line 2725
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 2729
    .end local v4           #len:I
    .end local v7           #off:I
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 2742
    :cond_12
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2743
    const/4 v11, 0x0

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    goto/16 :goto_3

    .line 2751
    :cond_13
    const/16 v11, 0xa

    if-ne v0, v11, :cond_16

    .line 2752
    if-nez v6, :cond_15

    iget-boolean v11, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v11, :cond_15

    .line 2753
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v12, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v12, v12

    if-lt v11, v12, :cond_14

    .line 2754
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v11}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2756
    :cond_14
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v13, 0xa

    aput-char v13, v11, v12

    .line 2758
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 2760
    :cond_16
    iget-boolean v11, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v11, :cond_18

    .line 2761
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v12, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v12, v12

    if-lt v11, v12, :cond_17

    .line 2762
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v11}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2764
    :cond_17
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v0, v11, v12
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2766
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_4
.end method

.method protected parseProlog()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 2809
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    if-eqz v7, :cond_0

    .line 2810
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v8, v8, -0x1

    aget-char v0, v7, v8

    .line 2815
    .local v0, ch:C
    :goto_0
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    if-nez v7, :cond_2

    .line 2819
    const v7, 0xfffe

    if-ne v0, v7, :cond_1

    .line 2820
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2821
    const-string v5, "first character in input was UNICODE noncharacter (0xFFFE)- input requires int swapping"

    .line 2820
    invoke-direct {v4, v5, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2812
    .end local v0           #ch:C
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .restart local v0       #ch:C
    goto :goto_0

    .line 2824
    :cond_1
    const v7, 0xfeff

    if-ne v0, v7, :cond_2

    .line 2826
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2829
    :cond_2
    iput-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 2830
    const/4 v1, 0x0

    .line 2831
    .local v1, gotS:Z
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2832
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v7, :cond_3

    .line 2833
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v7, :cond_3

    move v2, v4

    .line 2834
    .local v2, normalizeIgnorableWS:Z
    :goto_1
    const/4 v3, 0x0

    .line 2840
    .local v3, normalizedCR:Z
    :goto_2
    const/16 v7, 0x3c

    if-ne v0, v7, :cond_e

    .line 2841
    if-eqz v1, :cond_4

    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v7, :cond_4

    .line 2842
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2843
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 2844
    const/4 v4, 0x7

    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    .line 2888
    :goto_3
    return v4

    .end local v2           #normalizeIgnorableWS:Z
    .end local v3           #normalizedCR:Z
    :cond_3
    move v2, v5

    .line 2833
    goto :goto_1

    .line 2846
    .restart local v2       #normalizeIgnorableWS:Z
    .restart local v3       #normalizedCR:Z
    :cond_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2847
    const/16 v7, 0x3f

    if-ne v0, v7, :cond_7

    .line 2850
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parsePI()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2851
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v7, :cond_6

    .line 2852
    const/16 v4, 0x8

    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto :goto_3

    .line 2856
    :cond_5
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2857
    const/4 v1, 0x0

    .line 2939
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2835
    goto :goto_2

    .line 2860
    :cond_7
    const/16 v7, 0x21

    if-ne v0, v7, :cond_b

    .line 2861
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2862
    const/16 v7, 0x44

    if-ne v0, v7, :cond_9

    .line 2863
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->seenDocdecl:Z

    if-eqz v7, :cond_8

    .line 2864
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2865
    const-string v5, "only one docdecl allowed in XML document"

    .line 2864
    invoke-direct {v4, v5, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2868
    :cond_8
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->seenDocdecl:Z

    .line 2869
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseDocdecl()V

    .line 2870
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v7, :cond_6

    .line 2871
    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    move v4, v6

    goto :goto_3

    .line 2873
    :cond_9
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_a

    .line 2874
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseComment()V

    .line 2875
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v7, :cond_6

    .line 2876
    const/16 v4, 0x9

    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    goto :goto_3

    .line 2879
    :cond_a
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unexpected markup <!"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2880
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2879
    invoke-direct {v4, v5, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2882
    :cond_b
    const/16 v5, 0x2f

    if-ne v0, v5, :cond_c

    .line 2883
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2884
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expected start tag name and not "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2883
    invoke-direct {v4, v5, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2886
    :cond_c
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2887
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->seenRoot:Z

    .line 2888
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseStartTag()I

    move-result v4

    goto/16 :goto_3

    .line 2890
    :cond_d
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2891
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expected start tag name and not "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2890
    invoke-direct {v4, v5, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2894
    :cond_e
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2895
    const/4 v1, 0x1

    .line 2896
    if-eqz v2, :cond_6

    .line 2897
    const/16 v7, 0xd

    if-ne v0, v7, :cond_12

    .line 2898
    const/4 v3, 0x1

    .line 2902
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v7, :cond_f

    .line 2903
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2904
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v7, v8, :cond_11

    .line 2905
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 2912
    :cond_f
    :goto_5
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v8, v8

    if-lt v7, v8, :cond_10

    .line 2913
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2915
    :cond_10
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v6, v7, v8

    goto/16 :goto_4

    .line 2907
    :cond_11
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2908
    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    goto :goto_5

    .line 2916
    :cond_12
    if-ne v0, v6, :cond_15

    .line 2917
    if-nez v3, :cond_14

    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v7, :cond_14

    .line 2918
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v8, v8

    if-lt v7, v8, :cond_13

    .line 2919
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2921
    :cond_13
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v6, v7, v8

    .line 2923
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 2925
    :cond_15
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v7, :cond_17

    .line 2926
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v8, v8

    if-lt v7, v8, :cond_16

    .line 2927
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2929
    :cond_16
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v0, v7, v8

    .line 2931
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 2935
    :cond_18
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2936
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "only whitespace content allowed before start tag and not "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2937
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2936
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2935
    invoke-direct {v4, v5, p0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public parseStartTag()I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2947
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .line 2949
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2951
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 2952
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    .line 2954
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v17, v0

    add-int v13, v16, v17

    .line 2955
    .local v13, nameStart:I
    const/4 v9, -0x1

    .line 2956
    .local v9, colonPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-char v8, v16, v17

    .line 2957
    .local v8, ch:C
    const/16 v16, 0x3a

    move/from16 v0, v16

    if-ne v8, v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 2958
    new-instance v16, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2959
    const-string v17, "when namespaces processing enabled colon can not be at element name start"

    .line 2960
    const/16 v18, 0x0

    .line 2958
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v16

    .line 2973
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v17, v0

    add-int v9, v16, v17

    .line 2963
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v8

    .line 2964
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v16

    if-nez v16, :cond_7

    .line 2978
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->ensureElementsCapacity()V

    .line 2982
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    sub-int v10, v16, v17

    .line 2983
    .local v10, elLen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v0, v10, :cond_3

    .line 2984
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v17, v0

    mul-int/lit8 v18, v10, 0x2

    move/from16 v0, v18

    new-array v0, v0, [C

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    .line 2986
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    .line 2987
    const/16 v19, 0x0

    .line 2986
    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2988
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v17, v0

    aput v10, v16, v17

    .line 2989
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    move/from16 v18, v0

    aput v18, v16, v17

    .line 2992
    const/4 v14, 0x0

    .line 2993
    .local v14, prefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 2994
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v9, v0, :cond_8

    .line 2995
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v18, v0

    .line 2996
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v19, v0

    sub-int v19, v13, v19

    sub-int v20, v9, v13

    .line 2995
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v14

    .end local v14           #prefix:Ljava/lang/String;
    aput-object v14, v16, v17

    .line 2997
    .restart local v14       #prefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v18, v0

    add-int/lit8 v19, v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    .line 2999
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v21, v0

    sub-int v21, v9, v21

    sub-int v20, v20, v21

    .line 2997
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 3013
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v16

    if-nez v16, :cond_a

    .line 3017
    const/16 v16, 0x3e

    move/from16 v0, v16

    if-ne v8, v0, :cond_b

    .line 3045
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1a

    .line 3046
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/xmlpull/mxp1/MXParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3047
    .local v15, uri:Ljava/lang/String;
    if-nez v15, :cond_5

    .line 3048
    if-nez v14, :cond_f

    .line 3050
    const-string v15, ""

    .line 3058
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v17, v0

    aput-object v15, v16, v17

    .line 3066
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v11, v0, :cond_10

    .line 3087
    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v11, v0, :cond_13

    .line 3136
    .end local v15           #uri:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    move/from16 v18, v0

    aput v18, v16, v17

    .line 3137
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 3138
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v16

    .line 2967
    .end local v10           #elLen:I
    .end local v11           #i:I
    .end local v14           #prefix:Ljava/lang/String;
    :cond_7
    const/16 v16, 0x3a

    move/from16 v0, v16

    if-ne v8, v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 2968
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v9, v0, :cond_0

    .line 2969
    new-instance v16, Lorg/xmlpull/v1/XmlPullParserException;

    .line 2970
    const-string v17, "only one colon is allowed in name of element when namespaces are enabled"

    .line 2971
    const/16 v18, 0x0

    .line 2969
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v16

    .line 3001
    .restart local v10       #elLen:I
    .restart local v14       #prefix:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v17, v0

    const/4 v14, 0x0

    aput-object v14, v16, v17

    .line 3002
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v19, v0

    sub-int v19, v13, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v10}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    goto/16 :goto_0

    .line 3007
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    move/from16 v19, v0

    sub-int v19, v13, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v10}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    goto/16 :goto_0

    .line 3014
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v8

    goto/16 :goto_0

    .line 3019
    :cond_b
    const/16 v16, 0x2f

    move/from16 v0, v16

    if-ne v8, v0, :cond_d

    .line 3020
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 3021
    new-instance v16, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3022
    const-string v17, "repeated / in tag declaration"

    const/16 v18, 0x0

    .line 3021
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v16

    .line 3024
    :cond_c
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 3025
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v8

    .line 3026
    const/16 v16, 0x3e

    move/from16 v0, v16

    if-eq v8, v0, :cond_4

    .line 3027
    new-instance v16, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3028
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "expected > to end empty tag not "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3029
    const/16 v18, 0x0

    .line 3027
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v16

    .line 3032
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 3033
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseAttribute()C

    move-result v8

    .line 3034
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v8

    .line 3035
    goto/16 :goto_0

    .line 3037
    :cond_e
    new-instance v16, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3038
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "start tag unexpected character "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3039
    const/16 v18, 0x0

    .line 3037
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v16

    .line 3052
    .restart local v15       #uri:Ljava/lang/String;
    :cond_f
    new-instance v16, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3053
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "could not determine namespace bound to element prefix "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3054
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 3053
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3054
    const/16 v18, 0x0

    .line 3052
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v16

    .line 3067
    .restart local v11       #i:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v6, v16, v11

    .line 3068
    .local v6, attrPrefix:Ljava/lang/String;
    if-eqz v6, :cond_12

    .line 3069
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/xmlpull/mxp1/MXParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3070
    .local v7, attrUri:Ljava/lang/String;
    if-nez v7, :cond_11

    .line 3071
    new-instance v16, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3072
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "could not determine namespace bound to attribute prefix "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3073
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 3072
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3073
    const/16 v18, 0x0

    .line 3071
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v16

    .line 3076
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v7, v16, v11

    .line 3066
    .end local v7           #attrUri:Ljava/lang/String;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 3078
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ""

    aput-object v17, v16, v11

    goto :goto_3

    .line 3088
    .end local v6           #attrPrefix:Ljava/lang/String;
    :cond_13
    const/4 v12, 0x0

    .local v12, j:I
    :goto_4
    if-lt v12, v11, :cond_14

    .line 3087
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 3089
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_19

    .line 3090
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    move/from16 v16, v0

    if-eqz v16, :cond_15

    .line 3091
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    .line 3092
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    move/from16 v16, v0

    if-nez v16, :cond_19

    .line 3093
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    move-object/from16 v16, v0

    aget v16, v16, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    move-object/from16 v17, v0

    aget v17, v17, v11

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    .line 3094
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 3098
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v4, v16, v12

    .line 3099
    .local v4, attr1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    if-eqz v16, :cond_17

    .line 3100
    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3102
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v5, v16, v11

    .line 3103
    .local v5, attr2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    if-eqz v16, :cond_18

    .line 3104
    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3106
    :cond_18
    new-instance v16, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3107
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "duplicated attributes "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " and "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 3108
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 3107
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3108
    const/16 v18, 0x0

    .line 3106
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v16

    .line 3088
    .end local v4           #attr1:Ljava/lang/String;
    .end local v5           #attr2:Ljava/lang/String;
    :cond_19
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 3117
    .end local v11           #i:I
    .end local v12           #j:I
    .end local v15           #uri:Ljava/lang/String;
    :cond_1a
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v11, v0, :cond_6

    .line 3118
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_6
    if-lt v12, v11, :cond_1b

    .line 3117
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 3119
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1c

    .line 3120
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    move/from16 v16, v0

    if-nez v16, :cond_1e

    .line 3121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    move-object/from16 v16, v0

    aget v16, v16, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    move-object/from16 v17, v0

    aget v17, v17, v11

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    .line 3122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 3126
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v4, v16, v12

    .line 3127
    .restart local v4       #attr1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v5, v16, v11

    .line 3128
    .restart local v5       #attr2:Ljava/lang/String;
    new-instance v16, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3129
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "duplicated attributes "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " and "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 3130
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 3129
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3130
    const/16 v18, 0x0

    .line 3128
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v16

    .line 3118
    .end local v4           #attr1:Ljava/lang/String;
    .end local v5           #attr2:Ljava/lang/String;
    :cond_1e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6
.end method

.method protected parseXmlDecl(C)V
    .locals 7
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3146
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    .line 3147
    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    .line 3154
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result p1

    .line 3155
    sget-object v3, Lorg/xmlpull/mxp1/MXParser;->VERSION:[C

    invoke-virtual {p0, p1, v3}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result p1

    .line 3157
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result p1

    .line 3158
    const/16 v3, 0x3d

    if-eq p1, v3, :cond_0

    .line 3159
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "expected equals sign (=) after version and not "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3161
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3160
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3159
    invoke-direct {v3, v4, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 3163
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    .line 3164
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result p1

    .line 3165
    const/16 v3, 0x27

    if-eq p1, v3, :cond_1

    const/16 v3, 0x22

    if-eq p1, v3, :cond_1

    .line 3166
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3167
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "expected apostrophe (\') or quotation mark (\") after version and not "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3166
    invoke-direct {v3, v4, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 3170
    :cond_1
    move v0, p1

    .line 3173
    .local v0, quotChar:C
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 3174
    .local v2, versionStart:I
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    .line 3176
    :goto_0
    if-ne p1, v0, :cond_2

    .line 3186
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v1, v3, -0x1

    .line 3187
    .local v1, versionEnd:I
    invoke-virtual {p0, v2, v1}, Lorg/xmlpull/mxp1/MXParser;->parseXmlDeclWithVersion(II)V

    .line 3188
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    .line 3190
    return-void

    .line 3177
    .end local v1           #versionEnd:I
    :cond_2
    const/16 v3, 0x61

    if-lt p1, v3, :cond_3

    const/16 v3, 0x7a

    if-le p1, v3, :cond_6

    :cond_3
    const/16 v3, 0x41

    if-lt p1, v3, :cond_4

    const/16 v3, 0x5a

    if-le p1, v3, :cond_6

    .line 3178
    :cond_4
    const/16 v3, 0x30

    if-lt p1, v3, :cond_5

    const/16 v3, 0x39

    if-le p1, v3, :cond_6

    :cond_5
    const/16 v3, 0x5f

    if-eq p1, v3, :cond_6

    const/16 v3, 0x2e

    if-eq p1, v3, :cond_6

    .line 3179
    const/16 v3, 0x3a

    if-eq p1, v3, :cond_6

    const/16 v3, 0x2d

    if-eq p1, v3, :cond_6

    .line 3180
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3181
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<?xml version value expected to be in ([a-zA-Z0-9_.:] | \'-\') not "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3182
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3180
    invoke-direct {v3, v4, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 3184
    :cond_6
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    goto :goto_0
.end method

.method protected parseXmlDeclWithVersion(II)V
    .locals 11
    .parameter "versionStart"
    .parameter "versionEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x30

    const/16 v8, 0x2e

    const/16 v7, 0x27

    const/16 v6, 0x22

    const/4 v9, 0x0

    .line 3197
    sub-int v4, p2, p1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v4, v4, p1

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    .line 3198
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v5, p1, 0x1

    aget-char v4, v4, v5

    if-ne v4, v8, :cond_0

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v5, p1, 0x2

    aget-char v4, v4, v5

    if-eq v4, v10, :cond_1

    .line 3199
    :cond_0
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3200
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "only 1.0 is supported as <?xml version not \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3201
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    .line 3202
    sub-int v8, p2, p1

    invoke-direct {v6, v7, p1, v8}, Ljava/lang/String;-><init>([CII)V

    .line 3201
    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3202
    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3200
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3199
    invoke-direct {v4, v5, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 3205
    :cond_1
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v5, p2, p1

    invoke-virtual {p0, v4, p1, v5}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclVersion:Ljava/lang/String;

    .line 3209
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 3210
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v0

    .line 3211
    const/16 v4, 0x65

    if-ne v0, v4, :cond_7

    .line 3212
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 3213
    sget-object v4, Lorg/xmlpull/mxp1/MXParser;->NCODING:[C

    invoke-virtual {p0, v0, v4}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v0

    .line 3214
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v0

    .line 3215
    const/16 v4, 0x3d

    if-eq v0, v4, :cond_2

    .line 3216
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3217
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expected equals sign (=) after encoding and not "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3218
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3217
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3216
    invoke-direct {v4, v5, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 3220
    :cond_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 3221
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v0

    .line 3222
    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_3

    .line 3223
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3224
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expected apostrophe (\') or quotation mark (\") after encoding and not "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3225
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3223
    invoke-direct {v4, v5, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 3227
    :cond_3
    move v3, v0

    .line 3228
    .local v3, quotChar:C
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 3229
    .local v2, encodingStart:I
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 3231
    const/16 v4, 0x61

    if-lt v0, v4, :cond_4

    const/16 v4, 0x7a

    if-le v0, v4, :cond_6

    :cond_4
    const/16 v4, 0x41

    if-lt v0, v4, :cond_5

    const/16 v4, 0x5a

    if-le v0, v4, :cond_6

    .line 3232
    :cond_5
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3233
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<?xml encoding name expected to start with [A-Za-z] not "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3234
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3233
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3232
    invoke-direct {v4, v5, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 3236
    :cond_6
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 3237
    :goto_0
    if-ne v0, v3, :cond_8

    .line 3247
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v1, v4, -0x1

    .line 3250
    .local v1, encodingEnd:I
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    .line 3251
    sub-int v5, v1, v2

    .line 3250
    invoke-virtual {p0, v4, v2, v5}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    .line 3252
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 3255
    .end local v1           #encodingEnd:I
    .end local v2           #encodingStart:I
    .end local v3           #quotChar:C
    :cond_7
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v0

    .line 3258
    const/16 v4, 0x73

    if-ne v0, v4, :cond_12

    .line 3259
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 3260
    sget-object v4, Lorg/xmlpull/mxp1/MXParser;->TANDALONE:[C

    invoke-virtual {p0, v0, v4}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v0

    .line 3261
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v0

    .line 3262
    const/16 v4, 0x3d

    if-eq v0, v4, :cond_d

    .line 3263
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3264
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expected equals sign (=) after standalone and not "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3265
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3264
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3263
    invoke-direct {v4, v5, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 3238
    .restart local v2       #encodingStart:I
    .restart local v3       #quotChar:C
    :cond_8
    const/16 v4, 0x61

    if-lt v0, v4, :cond_9

    const/16 v4, 0x7a

    if-le v0, v4, :cond_c

    :cond_9
    const/16 v4, 0x41

    if-lt v0, v4, :cond_a

    const/16 v4, 0x5a

    if-le v0, v4, :cond_c

    .line 3239
    :cond_a
    if-lt v0, v10, :cond_b

    const/16 v4, 0x39

    if-le v0, v4, :cond_c

    :cond_b
    if-eq v0, v8, :cond_c

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_c

    .line 3240
    const/16 v4, 0x2d

    if-eq v0, v4, :cond_c

    .line 3241
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3242
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<?xml encoding value expected to be in ([A-Za-z0-9._] | \'-\') not "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3243
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3242
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3241
    invoke-direct {v4, v5, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 3245
    :cond_c
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    goto/16 :goto_0

    .line 3267
    .end local v2           #encodingStart:I
    .end local v3           #quotChar:C
    :cond_d
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 3268
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v0

    .line 3269
    if-eq v0, v7, :cond_e

    if-eq v0, v6, :cond_e

    .line 3270
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3271
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expected apostrophe (\') or quotation mark (\") after encoding and not "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3272
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3271
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3270
    invoke-direct {v4, v5, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 3274
    :cond_e
    move v3, v0

    .line 3275
    .restart local v3       #quotChar:C
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 3276
    const/16 v4, 0x79

    if-ne v0, v4, :cond_f

    .line 3277
    sget-object v4, Lorg/xmlpull/mxp1/MXParser;->YES:[C

    invoke-virtual {p0, v0, v4}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v0

    .line 3279
    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    .line 3289
    :goto_1
    if-eq v0, v3, :cond_11

    .line 3290
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expected "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3291
    const-string v6, " after standalone value not "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3290
    invoke-direct {v4, v5, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 3280
    :cond_f
    const/16 v4, 0x6e

    if-ne v0, v4, :cond_10

    .line 3281
    sget-object v4, Lorg/xmlpull/mxp1/MXParser;->NO:[C

    invoke-virtual {p0, v0, v4}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v0

    .line 3283
    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    goto :goto_1

    .line 3285
    :cond_10
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3286
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expected \'yes\' or \'no\' after standalone and not "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3287
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3286
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3285
    invoke-direct {v4, v5, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 3294
    :cond_11
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 3297
    .end local v3           #quotChar:C
    :cond_12
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v0

    .line 3298
    const/16 v4, 0x3f

    if-eq v0, v4, :cond_13

    .line 3299
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3300
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expected ?> as last part of <?xml not "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3299
    invoke-direct {v4, v5, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 3303
    :cond_13
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 3304
    const/16 v4, 0x3e

    if-eq v0, v4, :cond_14

    .line 3305
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3306
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expected ?> as last part of <?xml not "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3305
    invoke-direct {v4, v5, p0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 3335
    :cond_14
    return-void
.end method

.method protected printable(C)Ljava/lang/String;
    .locals 2
    .parameter "ch"

    .prologue
    .line 3339
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 3340
    const-string v0, "\\n"

    .line 3351
    :goto_0
    return-object v0

    .line 3341
    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 3342
    const-string v0, "\\r"

    goto :goto_0

    .line 3343
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 3344
    const-string v0, "\\t"

    goto :goto_0

    .line 3345
    :cond_2
    const/16 v0, 0x27

    if-ne p1, v0, :cond_3

    .line 3346
    const-string v0, "\\\'"

    goto :goto_0

    .line 3348
    :cond_3
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_4

    const/16 v0, 0x20

    if-ge p1, v0, :cond_5

    .line 3349
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3351
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected printable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 3355
    if-nez p1, :cond_0

    .line 3356
    const/4 v3, 0x0

    .line 3364
    :goto_0
    return-object v3

    .line 3358
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 3359
    .local v2, sLen:I
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v3, v2, 0xa

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3360
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 3363
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 3364
    goto :goto_0

    .line 3361
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3360
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "type"
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3370
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3371
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3372
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processing namespaces must be enabled on parser (or factory) to have possible namespaces declared on elements"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3374
    const-string v2, " (position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3372
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3371
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3376
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 3377
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3378
    :cond_1
    if-eqz p3, :cond_a

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3379
    :cond_2
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "expected event "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3381
    sget-object v2, Lorg/xmlpull/mxp1/MXParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3382
    if-eqz p3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " with name \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3383
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    const-string v0, " and"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3384
    if-eqz p2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " with namespace \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3385
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3384
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3386
    const-string v2, " but got"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3387
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v0

    if-eq p1, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3388
    sget-object v3, Lorg/xmlpull/mxp1/MXParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3387
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3389
    if-eqz p3, :cond_7

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3390
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " name \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3391
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3389
    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3392
    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    .line 3393
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3394
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3395
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3396
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, " and"

    .line 3392
    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3398
    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3399
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " namespace \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3400
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3398
    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3402
    const-string v2, " (position:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3379
    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3382
    :cond_3
    const-string v0, ""

    goto/16 :goto_0

    .line 3383
    :cond_4
    const-string v0, ""

    goto/16 :goto_1

    .line 3385
    :cond_5
    const-string v0, ""

    goto/16 :goto_2

    .line 3388
    :cond_6
    const-string v0, ""

    goto/16 :goto_3

    .line 3391
    :cond_7
    const-string v0, ""

    goto/16 :goto_4

    .line 3397
    :cond_8
    const-string v0, ""

    goto :goto_5

    .line 3401
    :cond_9
    const-string v0, ""

    goto :goto_6

    .line 3404
    :cond_a
    return-void
.end method

.method protected requireInput(C[C)C
    .locals 4
    .parameter "ch"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3408
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 3416
    return p1

    .line 3408
    :cond_0
    aget-char v0, p2, v1

    .line 3409
    .local v0, element:C
    if-eq p1, v0, :cond_1

    .line 3410
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3411
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3412
    const-string v3, " and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3410
    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 3414
    :cond_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    .line 3408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected requireNextS()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3420
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 3421
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3422
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "white space is required and not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3423
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3422
    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 3425
    :cond_0
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    return v1
.end method

.method protected reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3430
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->location:Ljava/lang/String;

    .line 3431
    const/4 v0, 0x1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 3432
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 3433
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenRoot:Z

    .line 3434
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    .line 3435
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    .line 3436
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 3438
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .line 3440
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    .line 3442
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    .line 3444
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    .line 3446
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    .line 3447
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    .line 3449
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    .line 3450
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    .line 3451
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    .line 3452
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 3454
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 3456
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 3458
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    .line 3459
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    .line 3460
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    .line 3461
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    .line 3462
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 3463
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenDocdecl:Z

    .line 3465
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclVersion:Ljava/lang/String;

    .line 3466
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    .line 3467
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclContent:Ljava/lang/String;

    .line 3469
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->resetStringCache()V

    .line 3470
    return-void
.end method

.method protected resetStringCache()V
    .locals 0

    .prologue
    .line 3474
    return-void
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
    .line 3490
    if-nez p1, :cond_0

    .line 3491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3492
    const-string v1, "feature name should not be null"

    .line 3491
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3494
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3495
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    if-eqz v0, :cond_1

    .line 3496
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3497
    const-string v1, "namespace processing feature can only be changed before parsing"

    .line 3498
    const/4 v2, 0x0

    .line 3496
    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 3500
    :cond_1
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    .line 3527
    :cond_2
    :goto_0
    return-void

    .line 3506
    :cond_3
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3507
    if-eqz p2, :cond_2

    .line 3508
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3509
    const-string v1, "interning names in this implementation is not supported"

    .line 3508
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3511
    :cond_4
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3512
    if-eqz p2, :cond_2

    .line 3513
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3514
    const-string v1, "processing DOCDECL is not supported"

    .line 3513
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3518
    :cond_5
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3523
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    goto :goto_0

    .line 3525
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported feature "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .parameter "inputStream"
    .parameter "inputEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 3532
    if-nez p1, :cond_0

    .line 3533
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input stream can not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3535
    :cond_0
    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->inputStream:Ljava/io/InputStream;

    .line 3539
    if-eqz p2, :cond_1

    .line 3540
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3554
    .local v0, reader:Ljava/io/Reader;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->setInput(Ljava/io/Reader;)V

    .line 3557
    iput-object p2, p0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    .line 3558
    return-void

    .line 3544
    .end local v0           #reader:Ljava/io/Reader;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v0, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0       #reader:Ljava/io/Reader;
    goto :goto_0

    .line 3546
    .end local v0           #reader:Ljava/io/Reader;
    :catch_0
    move-exception v1

    .line 3547
    .local v1, une:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 3548
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "could not create reader for encoding "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3549
    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3548
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3547
    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 3562
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->reset()V

    .line 3563
    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    .line 3564
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 3569
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3570
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lorg/xmlpull/mxp1/MXParser;->location:Ljava/lang/String;

    .line 3575
    return-void

    .line 3572
    .restart local p2
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported property: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3573
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3572
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected skipS(C)C
    .locals 1
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3582
    :goto_0
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3585
    return p1

    .line 3583
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    goto :goto_0
.end method

.method public skipSubTree()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 3594
    invoke-virtual {p0, v3, v2, v2}, Lorg/xmlpull/mxp1/MXParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 3595
    const/4 v1, 0x1

    .line 3596
    .local v1, level:I
    :cond_0
    :goto_0
    if-gtz v1, :cond_1

    .line 3604
    return-void

    .line 3597
    :cond_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    move-result v0

    .line 3598
    .local v0, eventType:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 3599
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3600
    :cond_2
    if-ne v0, v3, :cond_0

    .line 3601
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
