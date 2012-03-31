.class public Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# static fields
.field public static final staticFlag:Z


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "dstream"

    .prologue
    const/4 v1, 0x1

    .line 53
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 59
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    .line 65
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 66
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "dstream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 72
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .parameter "dstream"
    .parameter "encoding"
    .parameter "startline"
    .parameter "startcolumn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 79
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .parameter "dstream"
    .parameter "encoding"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 86
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 88
    :goto_0
    invoke-direct {p0, v0, p3, p4, p5}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 89
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .parameter "dstream"

    .prologue
    const/4 v1, 0x1

    .line 93
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 99
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 2
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    .line 38
    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->line:I

    .line 41
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 42
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 47
    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->maxNextCharInd:I

    .line 48
    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->inBuf:I

    .line 49
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tabSize:I

    .line 105
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 106
    iput p2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->line:I

    .line 107
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    .line 109
    iput p4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->available:I

    .line 110
    new-array v0, p4, [C

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    .line 111
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    .line 112
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    .line 113
    return-void
.end method


# virtual methods
.method public BeginToken()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    .line 170
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->readChar()C

    move-result v0

    .line 171
    .local v0, c:C
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    .line 173
    return v0
.end method

.method public Done()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    .line 179
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    .line 180
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    .line 181
    return-void
.end method

.method protected ExpandBuff(Z)V
    .locals 10
    .parameter "wrapAround"

    .prologue
    const/4 v9, 0x0

    .line 184
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v1, v4, [C

    .line 185
    .local v1, newbuffer:[C
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v2, v4, [I

    .line 186
    .local v2, newbufline:[I
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v0, v4, [I

    .line 189
    .local v0, newbufcolumn:[I
    if-eqz p1, :cond_0

    .line 190
    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    .line 191
    iget v8, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    .line 190
    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    .line 193
    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    .line 192
    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    .line 196
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    .line 197
    iget v8, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    .line 196
    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    .line 199
    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    .line 198
    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    .line 202
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    .line 203
    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    .line 202
    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    .line 205
    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    .line 204
    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    .line 208
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    iget v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    .line 229
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->available:I

    .line 230
    iput v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    .line 231
    return-void

    .line 210
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    .line 211
    iget v8, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    .line 210
    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    .line 214
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    .line 215
    iget v8, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    .line 214
    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    .line 218
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    .line 219
    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    .line 218
    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    .line 222
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v3

    .line 225
    .local v3, t:Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/Error;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected FillBuff()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x800

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 234
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->maxNextCharInd:I

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->available:I

    if-ne v2, v3, :cond_0

    .line 235
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->available:I

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    if-ne v2, v3, :cond_4

    .line 236
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v4, :cond_2

    .line 237
    iput v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    .line 238
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->available:I

    .line 255
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->maxNextCharInd:I

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->available:I

    .line 256
    iget v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->maxNextCharInd:I

    sub-int/2addr v5, v6

    .line 255
    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, i:I
    if-ne v1, v8, :cond_7

    .line 257
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 258
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/io/IOException;
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    .line 265
    invoke-virtual {p0, v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->backup(I)V

    .line 266
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    if-ne v2, v8, :cond_1

    .line 267
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    .line 269
    :cond_1
    throw v0

    .line 239
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    if-gez v2, :cond_3

    .line 240
    iput v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    goto :goto_0

    .line 242
    :cond_3
    invoke-virtual {p0, v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 244
    :cond_4
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->available:I

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v3, :cond_5

    .line 245
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->available:I

    goto :goto_0

    .line 246
    :cond_5
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->available:I

    sub-int/2addr v2, v3

    if-ge v2, v4, :cond_6

    .line 247
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 249
    :cond_6
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->available:I

    goto :goto_0

    .line 260
    .restart local v1       #i:I
    :cond_7
    :try_start_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    return-void
.end method

.method public GetImage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 305
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_0

    .line 306
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 308
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public GetSuffix(I)[C
    .locals 5
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 325
    new-array v0, p1, [C

    .line 327
    .local v0, ret:[C
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    .line 328
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    :goto_0
    return-object v0

    .line 330
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    .line 331
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    .line 330
    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2
    .parameter "dstream"

    .prologue
    const/4 v1, 0x1

    .line 366
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    .line 367
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 372
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    .line 373
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    .line 378
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 380
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "dstream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 385
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 386
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .parameter "dstream"
    .parameter "encoding"
    .parameter "startline"
    .parameter "startcolumn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 392
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 393
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .parameter "dstream"
    .parameter "encoding"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 399
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {p0, v0, p3, p4, p5}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 402
    return-void

    .line 400
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2
    .parameter "dstream"

    .prologue
    const/4 v1, 0x1

    .line 406
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 407
    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 411
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 412
    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .locals 2
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    const/4 v1, 0x0

    .line 417
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 418
    iput p2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->line:I

    .line 419
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    .line 421
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    array-length v0, v0

    if-eq p4, v0, :cond_1

    .line 422
    :cond_0
    iput p4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->available:I

    .line 423
    new-array v0, p4, [C

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    .line 424
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    .line 425
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    .line 427
    :cond_1
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->prevCharIsCR:Z

    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 428
    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->maxNextCharInd:I

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->inBuf:I

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    .line 429
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    .line 430
    return-void
.end method

.method protected UpdateLineColumn(C)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 437
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    .line 439
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->prevCharIsLF:Z

    if-eqz v0, :cond_1

    .line 440
    iput-boolean v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 441
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->line:I

    .line 451
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 466
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->line:I

    aput v2, v0, v1

    .line 467
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    aput v2, v0, v1

    .line 468
    return-void

    .line 442
    :cond_1
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_0

    .line 443
    iput-boolean v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 444
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 445
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_0

    .line 447
    :cond_2
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->line:I

    goto :goto_0

    .line 453
    :pswitch_1
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->prevCharIsCR:Z

    goto :goto_1

    .line 456
    :pswitch_2
    iput-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_1

    .line 459
    :pswitch_3
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    .line 460
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tabSize:I

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tabSize:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    goto :goto_1

    .line 451
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public adjustBeginLineColumn(II)V
    .locals 12
    .parameter "newLine"
    .parameter "newCol"

    .prologue
    .line 119
    iget v8, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    .line 122
    .local v8, start:I
    iget v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    if-lt v9, v10, :cond_2

    .line 123
    iget v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v9, v10

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v9, v10

    add-int/lit8 v5, v9, 0x1

    .line 128
    .local v5, len:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    const/4 v4, 0x0

    .line 129
    .local v4, k:I
    const/4 v7, 0x0

    .local v7, nextColDiff:I
    const/4 v0, 0x0

    .line 131
    .local v0, columnDiff:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 132
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    rem-int v3, v8, v10

    aget v9, v9, v3

    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v8, v8, 0x1

    .line 133
    iget v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    rem-int v4, v8, v11

    aget v10, v10, v4

    .line 132
    if-eq v9, v10, :cond_3

    .line 141
    :cond_0
    if-ge v1, v5, :cond_1

    .line 142
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v6, p1, 0x1

    .end local p1
    .local v6, newLine:I
    aput p1, v9, v3

    .line 143
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    add-int v10, p2, v0

    aput v10, v9, v3

    move v2, v1

    .line 145
    .end local v1           #i:I
    .local v2, i:I
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-lt v2, v5, :cond_4

    move p1, v6

    .line 154
    .end local v6           #newLine:I
    .restart local p1
    :cond_1
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    aget v9, v9, v3

    iput v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->line:I

    .line 155
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    aget v9, v9, v3

    iput v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->column:I

    .line 156
    return-void

    .line 125
    .end local v0           #columnDiff:I
    .end local v1           #i:I
    .end local v3           #j:I
    .end local v4           #k:I
    .end local v5           #len:I
    .end local v7           #nextColDiff:I
    :cond_2
    iget v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v9, v10

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->inBuf:I

    add-int v5, v9, v10

    .restart local v5       #len:I
    goto :goto_0

    .line 134
    .restart local v0       #columnDiff:I
    .restart local v1       #i:I
    .restart local v3       #j:I
    .restart local v4       #k:I
    .restart local v7       #nextColDiff:I
    :cond_3
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    aput p1, v9, v3

    .line 135
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    aget v9, v9, v4

    add-int/2addr v9, v0

    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    aget v10, v10, v3

    sub-int v7, v9, v10

    .line 136
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    add-int v10, p2, v0

    aput v10, v9, v3

    .line 137
    move v0, v7

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    .end local p1
    .restart local v6       #newLine:I
    :cond_4
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    rem-int v3, v8, v10

    aget v9, v9, v3

    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v8, v8, 0x1

    iget v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    rem-int v11, v8, v11

    aget v10, v10, v11

    if-eq v9, v10, :cond_5

    .line 147
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 p1, v6, 0x1

    .end local v6           #newLine:I
    .restart local p1
    aput v6, v9, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    move v6, p1

    .end local p1
    .restart local v6       #newLine:I
    goto :goto_2

    .line 149
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_5
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    aput v6, v9, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_2
.end method

.method public backup(I)V
    .locals 2
    .parameter "amount"

    .prologue
    .line 161
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->inBuf:I

    .line 162
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_0

    .line 163
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    .line 165
    :cond_0
    return-void
.end method

.method public getBeginColumn()I
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method protected getTabSize(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 339
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tabSize:I

    return v0
.end method

.method public readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->inBuf:I

    if-lez v1, :cond_1

    .line 345
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->inBuf:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->inBuf:I

    .line 347
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufsize:I

    if-ne v1, v2, :cond_0

    .line 348
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    .line 351
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 361
    :goto_0
    return v0

    .line 354
    :cond_1
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->maxNextCharInd:I

    if-lt v1, v2, :cond_2

    .line 355
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->FillBuff()V

    .line 358
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 360
    .local v0, c:C
    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->UpdateLineColumn(C)V

    goto :goto_0
.end method

.method protected setTabSize(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 433
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->tabSize:I

    .line 434
    return-void
.end method
