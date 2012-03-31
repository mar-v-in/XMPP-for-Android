.class public Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;
.super Ljava/lang/Object;
.source "FilterParser.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;,
        Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I


# instance fields
.field private args:[Ljava/lang/Object;

.field private final jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

.field private jj_endpos:I

.field private final jj_expentries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

.field private final jj_lasttokens:[I

.field private final jj_ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;

.field public jj_nt:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

.field public token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

.field public token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 103
    invoke-static {}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1_init_0()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/16 v7, 0x1f

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-array v2, v7, [I

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    .line 106
    const/4 v2, 0x7

    new-array v2, v2, [Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    .line 108
    iput-boolean v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_rescan:Z

    .line 110
    iput v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gc:I

    .line 112
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;)V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentries:Ljava/util/List;

    .line 118
    iput v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_kind:I

    .line 120
    const/16 v2, 0x64

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lasttokens:[I

    .line 146
    :try_start_0
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;

    .line 151
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 152
    iput v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    .line 153
    iput v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    .line 154
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v7, :cond_0

    .line 157
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 160
    return-void

    .line 147
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 155
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    aput v5, v2, v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    invoke-direct {v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 7
    .parameter "stream"

    .prologue
    const/16 v6, 0x1f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-array v1, v6, [I

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    .line 106
    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    .line 108
    iput-boolean v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_rescan:Z

    .line 110
    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gc:I

    .line 112
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;)V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentries:Ljava/util/List;

    .line 118
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_kind:I

    .line 120
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lasttokens:[I

    .line 164
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-direct {v1, p1, v5, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    .line 165
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;

    .line 166
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 167
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    .line 168
    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    .line 169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 172
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 175
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    aput v3, v1, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 178
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;-><init>(Ljava/io/Reader;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;)V
    .locals 6
    .parameter "tm"

    .prologue
    const/16 v5, 0x1f

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    .line 106
    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    .line 108
    iput-boolean v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_rescan:Z

    .line 110
    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gc:I

    .line 112
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;)V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentries:Ljava/util/List;

    .line 118
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_kind:I

    .line 120
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lasttokens:[I

    .line 126
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;

    .line 127
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 128
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    .line 129
    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    .line 130
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 133
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 136
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    aput v3, v1, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private convertToUtf8Char(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 338
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 339
    .local v0, bs:[B
    invoke-static {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getArgAttrValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 438
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 439
    .local v0, i:I
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->args:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->args:[Ljava/lang/Object;

    array-length v1, v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->args:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 440
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 443
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->args:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private final jj_2_1(I)Z
    .locals 4
    .parameter "xla"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 603
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la:I

    .line 604
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 606
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_1()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 610
    :cond_0
    invoke-direct {p0, v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 608
    :goto_0
    return v1

    .line 607
    :catch_0
    move-exception v0

    .line 610
    .local v0, ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    goto :goto_0

    .line 609
    .end local v0           #ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    .line 610
    invoke-direct {p0, v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 611
    throw v1
.end method

.method private final jj_2_2(I)Z
    .locals 3
    .parameter "xla"

    .prologue
    const/4 v2, 0x1

    .line 615
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la:I

    .line 616
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 618
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_2()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 622
    :goto_0
    invoke-direct {p0, v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 620
    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 618
    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 622
    .local v0, ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    move v1, v2

    .line 620
    goto :goto_1

    .line 621
    .end local v0           #ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    .line 622
    invoke-direct {p0, v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 623
    throw v1
.end method

.method private final jj_2_3(I)Z
    .locals 4
    .parameter "xla"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 627
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la:I

    .line 628
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 630
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_3()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 634
    :cond_0
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 632
    :goto_0
    return v1

    .line 631
    :catch_0
    move-exception v0

    .line 634
    .local v0, ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    goto :goto_0

    .line 633
    .end local v0           #ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    .line 634
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 635
    throw v1
.end method

.method private final jj_2_4(I)Z
    .locals 4
    .parameter "xla"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x3

    .line 639
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la:I

    .line 640
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 642
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_4()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 646
    :cond_0
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 644
    :goto_0
    return v1

    .line 643
    :catch_0
    move-exception v0

    .line 646
    .local v0, ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    goto :goto_0

    .line 645
    .end local v0           #ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    .line 646
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 647
    throw v1
.end method

.method private final jj_2_5(I)Z
    .locals 4
    .parameter "xla"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x4

    .line 651
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la:I

    .line 652
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 654
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_5()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 658
    :cond_0
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 656
    :goto_0
    return v1

    .line 655
    :catch_0
    move-exception v0

    .line 658
    .local v0, ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    goto :goto_0

    .line 657
    .end local v0           #ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    .line 658
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 659
    throw v1
.end method

.method private final jj_2_6(I)Z
    .locals 4
    .parameter "xla"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x5

    .line 663
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la:I

    .line 664
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 666
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_6()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 670
    :cond_0
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 668
    :goto_0
    return v1

    .line 667
    :catch_0
    move-exception v0

    .line 670
    .local v0, ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    goto :goto_0

    .line 669
    .end local v0           #ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    .line 670
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 671
    throw v1
.end method

.method private final jj_2_7(I)Z
    .locals 4
    .parameter "xla"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x6

    .line 675
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la:I

    .line 676
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 678
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_7()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 682
    :cond_0
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 680
    :goto_0
    return v1

    .line 679
    :catch_0
    move-exception v0

    .line 682
    .local v0, ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    goto :goto_0

    .line 681
    .end local v0           #ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    .line 682
    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_save(II)V

    .line 683
    throw v1
.end method

.method private final jj_3R_10()Z
    .locals 1

    .prologue
    .line 758
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_14()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    const/4 v0, 0x1

    .line 761
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_11()Z
    .locals 1

    .prologue
    .line 765
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_15()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    const/4 v0, 0x1

    .line 768
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_12()Z
    .locals 2

    .prologue
    .line 773
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_16()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    const/4 v1, 0x1

    .line 783
    :goto_0
    return v1

    .line 777
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 778
    .local v0, xsp:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_16()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 783
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jj_3R_13()Z
    .locals 1

    .prologue
    .line 787
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_17()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    const/4 v0, 0x1

    .line 790
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_14()Z
    .locals 2

    .prologue
    .line 794
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    const/4 v1, 0x1

    .line 802
    :goto_0
    return v1

    .line 798
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 799
    .local v0, xsp:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_18()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 802
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_15()Z
    .locals 2

    .prologue
    .line 806
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_12()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    const/4 v1, 0x1

    .line 814
    :goto_0
    return v1

    .line 810
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 811
    .local v0, xsp:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_19()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 812
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 814
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_16()Z
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 820
    .local v0, xsp:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_20()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 822
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_21()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 823
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 824
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_22()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 825
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 826
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_23()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 828
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_24()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 830
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_25()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 832
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_26()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 834
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_27()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 836
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_28()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    const/4 v1, 0x1

    .line 847
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_17()Z
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 853
    .local v0, xsp:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_29()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 855
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_30()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    const/4 v1, 0x1

    .line 859
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_18()Z
    .locals 1

    .prologue
    .line 863
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_15()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    const/4 v0, 0x1

    .line 866
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_19()Z
    .locals 1

    .prologue
    .line 870
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_14()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    const/4 v0, 0x1

    .line 873
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_20()Z
    .locals 1

    .prologue
    .line 877
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    const/4 v0, 0x1

    .line 880
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_21()Z
    .locals 1

    .prologue
    .line 884
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    const/4 v0, 0x1

    .line 887
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_22()Z
    .locals 1

    .prologue
    .line 891
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    const/4 v0, 0x1

    .line 894
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_23()Z
    .locals 1

    .prologue
    .line 898
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    const/4 v0, 0x1

    .line 901
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_24()Z
    .locals 1

    .prologue
    .line 905
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    const/4 v0, 0x1

    .line 908
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_25()Z
    .locals 1

    .prologue
    .line 912
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    const/4 v0, 0x1

    .line 915
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_26()Z
    .locals 1

    .prologue
    .line 919
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_31()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    const/4 v0, 0x1

    .line 922
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_27()Z
    .locals 1

    .prologue
    .line 926
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    const/4 v0, 0x1

    .line 929
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_28()Z
    .locals 1

    .prologue
    .line 933
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    const/4 v0, 0x1

    .line 936
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_29()Z
    .locals 1

    .prologue
    .line 940
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    const/4 v0, 0x1

    .line 943
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_30()Z
    .locals 1

    .prologue
    .line 947
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    const/4 v0, 0x1

    .line 950
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_31()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 954
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v0

    .line 957
    :cond_1
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_33()Z

    move-result v1

    if-nez v1, :cond_0

    .line 960
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_32()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 964
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 970
    :cond_0
    :goto_0
    return v0

    .line 967
    :cond_1
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_17()Z

    move-result v1

    if-nez v1, :cond_0

    .line 970
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_33()Z
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 976
    .local v0, xsp:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 977
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 978
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 980
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    const/4 v1, 0x1

    .line 985
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3_1()Z
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 689
    .local v0, xsp:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 691
    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    const/4 v1, 0x1

    .line 695
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3_2()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 699
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    :cond_0
    :goto_0
    return v0

    .line 702
    :cond_1
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 705
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_3()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 709
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 720
    :cond_0
    :goto_0
    return v1

    .line 713
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 714
    .local v0, xsp:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_10()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 715
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 716
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_11()Z

    move-result v2

    if-nez v2, :cond_0

    .line 720
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3_4()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 724
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_12()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    :cond_0
    :goto_0
    return v0

    .line 727
    :cond_1
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_5()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 734
    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_6()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 741
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 747
    :cond_0
    :goto_0
    return v0

    .line 744
    :cond_1
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3R_13()Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_7()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 751
    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_add_error_token(II)V
    .locals 6
    .parameter "kind"
    .parameter "pos"

    .prologue
    .line 989
    const/16 v3, 0x64

    if-lt p2, v3, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_endpos:I

    add-int/lit8 v3, v3, 0x1

    if-ne p2, v3, :cond_2

    .line 993
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lasttokens:[I

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_endpos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_endpos:I

    aput p1, v3, v4

    goto :goto_0

    .line 994
    :cond_2
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_endpos:I

    if-eqz v3, :cond_0

    .line 995
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_endpos:I

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentry:[I

    .line 996
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_endpos:I

    if-lt v0, v3, :cond_4

    .line 999
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentries:Ljava/util/List;

    .line 1000
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<[I>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 999
    if-nez v3, :cond_5

    .line 1012
    :goto_2
    if-eqz p2, :cond_0

    .line 1013
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lasttokens:[I

    iput p2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_endpos:I

    add-int/lit8 v4, p2, -0x1

    aput p1, v3, v4

    goto :goto_0

    .line 997
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<[I>;"
    :cond_4
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentry:[I

    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lasttokens:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1001
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<[I>;"
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1002
    .local v2, oldentry:[I
    array-length v3, v2

    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentry:[I

    array-length v4, v4

    if-ne v3, v4, :cond_3

    .line 1003
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentry:[I

    array-length v3, v3

    if-lt v0, v3, :cond_6

    .line 1008
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentries:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentry:[I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1004
    :cond_6
    aget v3, v2, v0

    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentry:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_3

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private final jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .locals 8
    .parameter "kind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1020
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .local v2, oldToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v4, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-eqz v4, :cond_1

    .line 1021
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v4, v4, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1025
    :goto_0
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    .line 1026
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget v4, v4, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->kind:I

    if-ne v4, p1, :cond_5

    .line 1027
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    .line 1028
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gc:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gc:I

    const/16 v5, 0x64

    if-le v4, v5, :cond_0

    .line 1029
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gc:I

    .line 1030
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    array-length v5, v4

    :goto_1
    if-lt v3, v5, :cond_2

    .line 1040
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    return-object v3

    .line 1023
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;

    invoke-virtual {v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_0

    .line 1030
    :cond_2
    aget-object v1, v4, v3

    .line 1031
    .local v1, jj_2_rtn:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    move-object v0, v1

    .line 1032
    .local v0, c:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    :goto_2
    if-nez v0, :cond_3

    .line 1030
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1033
    :cond_3
    iget v6, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->gen:I

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    if-ge v6, v7, :cond_4

    .line 1034
    const/4 v6, 0x0

    iput-object v6, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->first:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1036
    :cond_4
    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    goto :goto_2

    .line 1042
    .end local v0           #c:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    .end local v1           #jj_2_rtn:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    :cond_5
    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1043
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_kind:I

    .line 1044
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->generateParseException()Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    move-result-object v3

    throw v3
.end method

.method private static jj_la1_init_0()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1_0:[I

    .line 66
    return-void

    .line 61
    :array_0
    .array-data 0x4
        0xct 0x8t 0xct 0x0t
        0xct 0x8t 0xct 0x0t
        0x0t 0x8t 0x4t 0x0t
        0x0t 0x8t 0x4t 0x0t
        0x0t 0x8t 0x4t 0x0t
        0x0t 0x0t 0x10t 0x0t
        0x4ct 0x8t 0x4t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x4ct 0x8t 0xct 0x0t
        0xct 0x8t 0xct 0x0t
        0x4ct 0x8t 0xct 0x0t
        0x0t 0x0t 0x40t 0x0t
        0x0t 0x0t 0x0t 0x3t
        0x0t 0x0t 0x0t 0x3t
        0x0t 0x0t 0x0t 0x3t
        0x10t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x3t
        0x4ct 0x18t 0xact 0x0t
        0x4ct 0x18t 0xact 0x0t
        0x4t 0x8t 0x4t 0x0t
        0x4t 0x8t 0x4t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x4et 0x17t 0x0t 0x0t
        0x4ct 0x18t 0xaet 0x0t
        0x0t 0xc0t 0x0t 0x0t
        0x2t 0x10t 0x0t 0x0t
        0x4et 0x10t 0x0t 0x0t
        0x4ct 0x18t 0xact 0x0t
        0x0t 0x0t 0x2t 0x0t
        0x4ct 0x18t 0xact 0x0t
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_nt:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-nez v0, :cond_0

    .line 1049
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget v0, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    .line 1051
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_nt:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget v0, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0
.end method

.method private final jj_rescan_token()V
    .locals 4

    .prologue
    .line 1056
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_rescan:Z

    .line 1057
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x7

    if-lt v0, v2, :cond_0

    .line 1093
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_rescan:Z

    .line 1094
    return-void

    .line 1059
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    aget-object v1, v2, v0

    .line 1061
    .local v1, p:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    :cond_1
    iget v2, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    if-le v2, v3, :cond_2

    .line 1062
    iget v2, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->arg:I

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la:I

    .line 1063
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->first:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1064
    packed-switch v0, :pswitch_data_0

    .line 1088
    :cond_2
    :goto_1
    iget-object v1, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    .line 1089
    if-nez v1, :cond_1

    .line 1057
    .end local v1           #p:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1066
    .restart local v1       #p:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_1()Z

    goto :goto_1

    .line 1090
    .end local v1           #p:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1069
    .restart local v1       #p:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_2()Z

    goto :goto_1

    .line 1072
    :pswitch_2
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_3()Z

    goto :goto_1

    .line 1075
    :pswitch_3
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_4()Z

    goto :goto_1

    .line 1078
    :pswitch_4
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_5()Z

    goto :goto_1

    .line 1081
    :pswitch_5
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_6()Z

    goto :goto_1

    .line 1084
    :pswitch_6
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_3_7()Z
    :try_end_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1064
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jj_save(II)V
    .locals 4
    .parameter "index"
    .parameter "xla"

    .prologue
    .line 1097
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    aget-object v0, v2, p1

    .line 1098
    .local v0, p:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    :goto_0
    iget v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    if-gt v2, v3, :cond_0

    .line 1105
    :goto_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    add-int/2addr v2, p2

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->gen:I

    .line 1106
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->first:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1107
    iput p2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->arg:I

    .line 1108
    return-void

    .line 1099
    :cond_0
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    if-nez v2, :cond_1

    .line 1100
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;-><init>()V

    iput-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    .end local v0           #p:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    .local v1, p:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    move-object v0, v1

    .line 1101
    .end local v1           #p:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    .restart local v0       #p:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;
    goto :goto_1

    .line 1103
    :cond_1
    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    goto :goto_0
.end method

.method private final jj_scan_token(I)Z
    .locals 4
    .parameter "kind"

    .prologue
    .line 1111
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-ne v2, v3, :cond_3

    .line 1112
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la:I

    .line 1113
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v2, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-nez v2, :cond_2

    .line 1114
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;

    .line 1115
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v3

    .line 1114
    iput-object v3, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1122
    :goto_0
    iget-boolean v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_rescan:Z

    if-eqz v2, :cond_1

    .line 1123
    const/4 v0, 0x0

    .line 1124
    .local v0, i:I
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1125
    .local v1, tok:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-ne v1, v2, :cond_4

    .line 1129
    :cond_0
    if-eqz v1, :cond_1

    .line 1130
    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_add_error_token(II)V

    .line 1133
    .end local v0           #i:I
    .end local v1           #tok:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget v2, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->kind:I

    if-eq v2, p1, :cond_5

    .line 1134
    const/4 v2, 0x1

    .line 1139
    :goto_2
    return v2

    .line 1117
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v2, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_0

    .line 1120
    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v2, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_0

    .line 1126
    .restart local v0       #i:I
    .restart local v1       #tok:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 1127
    iget-object v1, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_1

    .line 1136
    .end local v0           #i:I
    .end local v1           #tok:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :cond_5
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-ne v2, v3, :cond_6

    .line 1137
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ls:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$LookaheadSuccess;

    throw v2

    .line 1139
    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;

    new-instance v1, Ljava/io/FileInputStream;

    .line 71
    const-string v2, "parser.filter.test"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;-><init>(Ljava/io/InputStream;)V

    .line 74
    .local v0, parser:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->test()V

    .line 75
    return-void
.end method

.method private parseSubstring(Ljava/lang/String;Ljava/util/List;)Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .locals 10
    .parameter "des"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/harmony/jndi/provider/ldap/Filter;"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 1347
    const/4 v2, 0x0

    .line 1348
    .local v2, filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1349
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1350
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v2           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v7, 0x7

    invoke-direct {v2, v7}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 1351
    .restart local v2       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    invoke-virtual {v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    .line 1388
    :goto_0
    return-object v2

    .line 1353
    :cond_0
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v2           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v7, 0x3

    invoke-direct {v2, v7}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 1354
    .restart local v2       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    new-instance v7, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1357
    :cond_1
    const/4 v4, 0x0

    .line 1358
    .local v4, initial:Ljava/lang/String;
    const-string v0, ""

    .line 1359
    .local v0, any:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1360
    .local v1, end:Ljava/lang/String;
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1361
    const-string v0, "*"

    .line 1366
    :goto_1
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_5

    .line 1374
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v2           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v7, 0x4

    invoke-direct {v2, v7}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 1375
    .restart local v2       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    new-instance v5, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;

    invoke-direct {v5, p1}, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;-><init>(Ljava/lang/String;)V

    .line 1376
    .local v5, substring:Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;
    if-eqz v4, :cond_2

    .line 1377
    invoke-virtual {v5, v4}, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->addInitial(Ljava/lang/String;)V

    .line 1380
    :cond_2
    invoke-virtual {v5, v0}, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->addAny(Ljava/lang/String;)V

    .line 1382
    if-eqz v1, :cond_3

    .line 1383
    invoke-virtual {v5, v1}, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->addFinal(Ljava/lang/String;)V

    .line 1385
    :cond_3
    invoke-virtual {v2, v5}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1363
    .end local v3           #i:I
    .end local v5           #substring:Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;
    :cond_4
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #initial:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #initial:Ljava/lang/String;
    goto :goto_1

    .line 1367
    .restart local v3       #i:I
    :cond_5
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1368
    .local v6, value:Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1369
    move-object v1, v6

    .line 1366
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1371
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 1407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1408
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/4 v5, -0x1

    .line 1413
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->ReInit(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V

    .line 1418
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1419
    iput v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    .line 1420
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    .line 1421
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    .line 1424
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 1427
    return-void

    .line 1414
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 1415
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1422
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    aput v5, v2, v1

    .line 1421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1425
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    invoke-direct {v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    .line 1424
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .parameter "stream"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 1431
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 1432
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->ReInit(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V

    .line 1433
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1434
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    .line 1435
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    .line 1436
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 1439
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1442
    return-void

    .line 1437
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    aput v3, v1, v0

    .line 1436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1440
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    .line 1439
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public ReInit(Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;)V
    .locals 3
    .parameter "tm"

    .prologue
    const/4 v2, -0x1

    .line 1393
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;

    .line 1394
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1395
    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    .line 1396
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    .line 1397
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 1400
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1403
    return-void

    .line 1398
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    aput v2, v1, v0

    .line 1397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1401
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    .line 1400
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final any_part()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x11

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v2, value:Ljava/lang/StringBuilder;
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 186
    .local v0, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v3, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->value()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, temp:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 191
    iget-object v3, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_4(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final argument()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, num:Ljava/lang/String;
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 204
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->number()Ljava/lang/String;

    move-result-object v0

    .line 205
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 206
    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->getArgAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final asterisk_start(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 210
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 211
    const-string v0, "*"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 225
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v1, 0x1c

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v2, v0, v1

    .line 228
    :goto_1
    return-void

    .line 212
    :cond_0
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0

    .line 222
    :sswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->value_start(Ljava/util/List;)V

    goto :goto_1

    .line 212
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x15 -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public final attrDescr()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->attrType()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, type:Ljava/lang/String;
    :goto_0
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 239
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v2, 0xb

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v3, v1, v2

    .line 244
    return-object v0

    .line 234
    :cond_0
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_1

    .line 242
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->option()Ljava/lang/String;

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public final attrType()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v6, -0x1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v2, value:Ljava/lang/StringBuilder;
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v3, v6, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 265
    :pswitch_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/4 v4, 0x7

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v5, v3, v4

    .line 266
    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 267
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v3

    .line 251
    :cond_0
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0

    .line 253
    :pswitch_1
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    .line 254
    .local v1, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .end local v1           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :goto_1
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v3

    :goto_2
    sparse-switch v3, :sswitch_data_0

    .line 280
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v4, 0x8

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v5, v3, v4

    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 257
    :pswitch_2
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    .line 258
    .restart local v1       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 261
    .end local v1           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->argument()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 270
    .end local v0           #arg:Ljava/lang/String;
    :cond_1
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_2

    .line 283
    :sswitch_0
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v3, v6, :cond_2

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v3

    :goto_3
    sparse-switch v3, :sswitch_data_1

    .line 317
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v4, 0xa

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v5, v3, v4

    .line 318
    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 319
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v3

    .line 283
    :cond_2
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_3

    .line 289
    :sswitch_1
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v3

    :goto_4
    sparse-switch v3, :sswitch_data_2

    .line 306
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v4, 0x9

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v5, v3, v4

    .line 307
    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 308
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v3

    .line 289
    :cond_3
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_4

    .line 291
    :sswitch_2
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    .line 310
    .restart local v1       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :goto_5
    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 294
    .end local v1           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :sswitch_3
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    .line 295
    .restart local v1       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_5

    .line 297
    .end local v1           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :sswitch_4
    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    .line 298
    .restart local v1       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_5

    .line 300
    .end local v1           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :sswitch_5
    const/16 v3, 0x12

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    .line 301
    .restart local v1       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_5

    .line 303
    .end local v1           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :sswitch_6
    const/16 v3, 0x13

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    .line 304
    .restart local v1       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_5

    .line 313
    .end local v1           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :sswitch_7
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->argument()Ljava/lang/String;

    move-result-object v0

    .line 314
    .restart local v0       #arg:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 270
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0xb -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch

    .line 283
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x6 -> :sswitch_7
        0xb -> :sswitch_1
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
    .end sparse-switch

    .line 289
    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xb -> :sswitch_4
        0x12 -> :sswitch_5
        0x13 -> :sswitch_6
    .end sparse-switch
.end method

.method public final backslashValue()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 327
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 328
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->hexDigit()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->convertToUtf8Char(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final colon_oid()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 333
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 334
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->oid()Ljava/lang/String;

    .line 335
    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public final eof()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 352
    return-void
.end method

.method public final extensible_1(Ljava/lang/String;)Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;
    .locals 6
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 356
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;-><init>()V

    .line 357
    .local v0, rule:Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->setType(Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_5(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 361
    invoke-virtual {v0, v3}, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->setDnAttributes(Z)V

    .line 365
    :cond_0
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_6(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 367
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->oid()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->setMatchingRule(Ljava/lang/String;)V

    .line 372
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 373
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 374
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->value()Ljava/lang/String;

    move-result-object v1

    .line 375
    .restart local v1       #value:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->setMatchValue(Ljava/lang/String;)V

    .line 376
    return-object v0
.end method

.method public final extensible_2()Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    .line 380
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;-><init>()V

    .line 382
    .local v0, rule:Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_7(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 387
    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 388
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->matchingrule()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->setMatchingRule(Ljava/lang/String;)V

    .line 390
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 391
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 392
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->value()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;->setMatchValue(Ljava/lang/String;)V

    .line 394
    return-object v0
.end method

.method public final final_part()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->value()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public generateParseException()Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
    .locals 9

    .prologue
    const/16 v8, 0x1a

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 405
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 406
    new-array v3, v8, [Z

    .line 407
    .local v3, la1tokens:[Z
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_kind:I

    if-ltz v4, :cond_0

    .line 408
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_kind:I

    aput-boolean v7, v3, v4

    .line 409
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_kind:I

    .line 411
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x1f

    if-lt v1, v4, :cond_1

    .line 420
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v8, :cond_5

    .line 427
    iput v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_endpos:I

    .line 428
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_rescan_token()V

    .line 429
    invoke-direct {p0, v6, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_add_error_token(II)V

    .line 430
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 431
    .local v0, exptokseq:[[I
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_7

    .line 434
    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    sget-object v6, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4

    .line 412
    .end local v0           #exptokseq:[[I
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    if-ne v4, v5, :cond_2

    .line 413
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    const/16 v4, 0x20

    if-lt v2, v4, :cond_3

    .line 411
    .end local v2           #j:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .restart local v2       #j:I
    :cond_3
    sget-object v4, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v7, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 415
    aput-boolean v7, v3, v2

    .line 413
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 421
    .end local v2           #j:I
    :cond_5
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_6

    .line 422
    new-array v4, v7, [I

    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentry:[I

    .line 423
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentry:[I

    aput v1, v4, v6

    .line 424
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentries:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentry:[I

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 432
    .restart local v0       #exptokseq:[[I
    :cond_7
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getArgs()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public final getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 457
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    .line 458
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    .line 459
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    return-object v0

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .locals 4
    .parameter "index"

    .prologue
    .line 464
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 465
    .local v1, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .local v2, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :goto_0
    if-lt v0, p1, :cond_0

    .line 472
    return-object v2

    .line 466
    :cond_0
    iget-object v3, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-eqz v3, :cond_1

    .line 467
    iget-object v1, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 465
    .end local v2           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .restart local v1       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .restart local v2       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_0

    .line 469
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserTokenManager;->getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .end local v2           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .restart local v1       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_1
.end method

.method public final hexDigit()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x12

    const/16 v4, 0xb

    const/4 v3, 0x2

    const/4 v5, -0x1

    .line 478
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 489
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v3, 0x13

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v4, v2, v3

    .line 490
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 491
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v2

    .line 478
    :cond_0
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0

    .line 480
    :sswitch_0
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 493
    .local v0, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :goto_1
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 494
    .local v1, value:Ljava/lang/String;
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v2

    :goto_2
    sparse-switch v2, :sswitch_data_1

    .line 505
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v3, 0x14

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v4, v2, v3

    .line 506
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 507
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v2

    .line 483
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .end local v1           #value:Ljava/lang/String;
    :sswitch_1
    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 484
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_1

    .line 486
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :sswitch_2
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 487
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_1

    .line 494
    .restart local v1       #value:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_2

    .line 496
    :sswitch_3
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 509
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    return-object v1

    .line 499
    :sswitch_4
    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 500
    goto :goto_3

    .line 502
    :sswitch_5
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 503
    goto :goto_3

    .line 478
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xb -> :sswitch_2
        0x12 -> :sswitch_1
    .end sparse-switch

    .line 494
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0xb -> :sswitch_5
        0x12 -> :sswitch_4
    .end sparse-switch
.end method

.method public final item()Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x9

    const/16 v9, 0xd

    const/4 v8, -0x1

    .line 514
    const/4 v1, 0x0

    .line 515
    .local v1, filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v4, 0x0

    .line 516
    .local v4, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 517
    .local v0, des:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 519
    .local v3, rule:Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;
    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v5, v8, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v5

    :goto_0
    sparse-switch v5, :sswitch_data_0

    .line 595
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v6, 0x1b

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v7, v5, v6

    .line 596
    invoke-direct {p0, v8}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 597
    new-instance v5, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v5

    .line 519
    :cond_0
    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0

    .line 523
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->attrDescr()Ljava/lang/String;

    move-result-object v0

    .line 524
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_2(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 525
    const/16 v5, 0x10

    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 526
    invoke-direct {p0, v9}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 527
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->value()Ljava/lang/String;

    move-result-object v4

    .line 528
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v1           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/16 v5, 0x8

    invoke-direct {v1, v5}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 529
    .restart local v1       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    new-instance v5, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    invoke-direct {v5, v0, v4}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    .line 599
    :goto_1
    return-object v1

    .line 531
    :cond_1
    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v5, v8, :cond_2

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v5

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 547
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v6, 0x19

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v7, v5, v6

    .line 548
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_3(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 549
    invoke-direct {p0, v9}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 550
    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v5, v8, :cond_3

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v5

    :goto_3
    packed-switch v5, :pswitch_data_1

    .line 566
    :pswitch_0
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v6, 0x18

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v7, v5, v6

    .line 567
    invoke-direct {p0, v8}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 568
    new-instance v5, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v5

    .line 531
    :cond_2
    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_2

    .line 533
    :pswitch_1
    const/16 v5, 0xf

    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 534
    invoke-direct {p0, v9}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 535
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->value()Ljava/lang/String;

    move-result-object v4

    .line 536
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v1           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v5, 0x5

    invoke-direct {v1, v5}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 537
    .restart local v1       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    new-instance v5, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    invoke-direct {v5, v0, v4}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 540
    :pswitch_2
    const/16 v5, 0xe

    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 541
    invoke-direct {p0, v9}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 542
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->value()Ljava/lang/String;

    move-result-object v4

    .line 543
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v1           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v5, 0x6

    invoke-direct {v1, v5}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 544
    .restart local v1       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    new-instance v5, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    invoke-direct {v5, v0, v4}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 550
    :cond_3
    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_3

    .line 552
    :pswitch_3
    invoke-virtual {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->asterisk_start(Ljava/util/List;)V

    .line 570
    :goto_4
    invoke-direct {p0, v0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parseSubstring(Ljava/lang/String;Ljava/util/List;)Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v1

    goto :goto_1

    .line 563
    :pswitch_4
    invoke-virtual {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->value_start(Ljava/util/List;)V

    goto :goto_4

    .line 572
    :cond_4
    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v5, v8, :cond_5

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v5

    :goto_5
    sparse-switch v5, :sswitch_data_1

    .line 580
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v6, 0x1a

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v7, v5, v6

    .line 581
    invoke-direct {p0, v8}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 582
    new-instance v5, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v5

    .line 572
    :cond_5
    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_5

    .line 575
    :sswitch_1
    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->extensible_1(Ljava/lang/String;)Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;

    move-result-object v3

    .line 576
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v1           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    invoke-direct {v1, v10}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 577
    .restart local v1       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    invoke-virtual {v1, v3}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 590
    :sswitch_2
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->extensible_2()Lorg/apache/harmony/jndi/provider/ldap/Filter$MatchingRuleAssertion;

    move-result-object v3

    .line 591
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v1           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    invoke-direct {v1, v10}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 592
    .restart local v1       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    invoke-virtual {v1, v3}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 519
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0xc -> :sswitch_2
    .end sparse-switch

    .line 531
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 550
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 572
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public final matchingrule()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 1143
    const/4 v0, 0x0

    .line 1144
    .local v0, value:Ljava/lang/String;
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 1155
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/4 v2, 0x6

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v3, v1, v2

    .line 1156
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1157
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v1

    .line 1144
    :cond_0
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0

    .line 1147
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->oid()Ljava/lang/String;

    move-result-object v0

    .line 1159
    :goto_1
    return-object v0

    .line 1152
    :sswitch_1
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->attrType()Ljava/lang/String;

    move-result-object v0

    .line 1153
    goto :goto_1

    .line 1144
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x6 -> :sswitch_1
        0xb -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public final number()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x12

    const/16 v3, 0xb

    const/4 v5, -0x1

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1165
    .local v1, value:Ljava/lang/StringBuilder;
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 1200
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/4 v3, 0x4

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v4, v2, v3

    .line 1201
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1202
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v2

    .line 1165
    :cond_0
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0

    .line 1167
    :sswitch_0
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 1168
    .local v0, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1171
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :sswitch_1
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 1172
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    :goto_2
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v2

    :goto_3
    sparse-switch v2, :sswitch_data_1

    .line 1180
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/4 v3, 0x2

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v4, v2, v3

    goto :goto_1

    .line 1174
    :cond_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_3

    .line 1183
    :sswitch_2
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v2, v5, :cond_2

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v2

    :goto_4
    sparse-switch v2, :sswitch_data_2

    .line 1193
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/4 v3, 0x3

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v4, v2, v3

    .line 1194
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1195
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v2

    .line 1183
    :cond_2
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_4

    .line 1185
    :sswitch_3
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 1186
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1189
    :sswitch_4
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 1190
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1165
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch

    .line 1174
    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_2
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 1183
    :sswitch_data_2
    .sparse-switch
        0xb -> :sswitch_3
        0x12 -> :sswitch_4
    .end sparse-switch
.end method

.method public final oid()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1209
    .local v2, value:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1210
    .local v0, number:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1211
    .local v1, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->number()Ljava/lang/String;

    move-result-object v0

    .line 1212
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    :pswitch_0
    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    .line 1215
    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->number()Ljava/lang/String;

    move-result-object v0

    .line 1217
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 1223
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/4 v4, 0x5

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v5, v3, v4

    .line 1227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1218
    :cond_0
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public final option()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1233
    .local v1, value:Ljava/lang/StringBuilder;
    const/16 v2, 0x16

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 1234
    .local v0, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    :sswitch_0
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 1258
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v4, v2, v3

    .line 1259
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1260
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v2

    .line 1236
    :cond_0
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0

    .line 1238
    :sswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 1239
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    :goto_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v2

    :goto_2
    sparse-switch v2, :sswitch_data_1

    .line 1271
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/4 v3, 0x1

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v4, v2, v3

    .line 1275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1242
    :sswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 1243
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1246
    :sswitch_3
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 1247
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1250
    :sswitch_4
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 1251
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1254
    :sswitch_5
    const/16 v2, 0x13

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 1255
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1262
    :cond_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_2

    .line 1236
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xb -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
    .end sparse-switch

    .line 1262
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xb -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public final parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 1279
    const/4 v0, 0x0

    .line 1280
    .local v0, filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v1, 0x0

    .line 1281
    .local v1, temp:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1282
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1337
    :pswitch_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v3, 0x17

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v4, v2, v3

    .line 1338
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1339
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v2

    .line 1282
    :cond_0
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0

    .line 1284
    :pswitch_1
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1285
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v0           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 1286
    .restart local v0       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v1

    .line 1287
    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->addChild(Lorg/apache/harmony/jndi/provider/ldap/Filter;)V

    .line 1288
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v1

    .line 1289
    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->addChild(Lorg/apache/harmony/jndi/provider/ldap/Filter;)V

    .line 1291
    :goto_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v2

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 1296
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v3, 0x15

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v4, v2, v3

    .line 1341
    :goto_3
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1343
    return-object v0

    .line 1291
    :cond_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_2

    .line 1299
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v1

    .line 1300
    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->addChild(Lorg/apache/harmony/jndi/provider/ldap/Filter;)V

    goto :goto_1

    .line 1304
    :pswitch_3
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1305
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v0           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 1306
    .restart local v0       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v1

    .line 1307
    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->addChild(Lorg/apache/harmony/jndi/provider/ldap/Filter;)V

    .line 1308
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v1

    .line 1309
    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->addChild(Lorg/apache/harmony/jndi/provider/ldap/Filter;)V

    .line 1311
    :goto_4
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v2, v5, :cond_2

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v2

    :goto_5
    packed-switch v2, :pswitch_data_2

    .line 1316
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v3, 0x16

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v4, v2, v3

    goto :goto_3

    .line 1311
    :cond_2
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_5

    .line 1319
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v1

    .line 1320
    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->addChild(Lorg/apache/harmony/jndi/provider/ldap/Filter;)V

    goto :goto_4

    .line 1324
    :pswitch_5
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1325
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .end local v0           #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/apache/harmony/jndi/provider/ldap/Filter;-><init>(I)V

    .line 1326
    .restart local v0       #filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v1

    .line 1327
    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 1334
    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->item()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v0

    .line 1335
    goto :goto_3

    .line 1282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 1291
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch

    .line 1311
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch
.end method

.method public setArgs([Ljava/lang/Object;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 1445
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->args:[Ljava/lang/Object;

    .line 1446
    return-void
.end method

.method public final tail_part()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 1451
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->any_part()Ljava/lang/String;

    move-result-object v1

    .line 1452
    .local v1, value:Ljava/lang/String;
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 1466
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v3, 0x1e

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v4, v2, v3

    .line 1469
    :goto_1
    return-object v1

    .line 1452
    :cond_0
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0

    .line 1462
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->final_part()Ljava/lang/String;

    move-result-object v0

    .line 1463
    .local v0, temp:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1464
    goto :goto_1

    .line 1452
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x15 -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public final test()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x19

    const/16 v5, 0x18

    const/4 v4, -0x1

    .line 1473
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1499
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v2, 0xf

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v3, v1, v2

    .line 1500
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_2_1(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1501
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v1, v4, :cond_3

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v1

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 1509
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v2, 0xd

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v3, v1, v2

    .line 1510
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1511
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v1

    .line 1473
    :cond_0
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0

    .line 1479
    :pswitch_0
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->args:[Ljava/lang/Object;

    .line 1480
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->args:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1483
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .line 1484
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v1, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v1

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 1492
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v2, 0xc

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v3, v1, v2

    .line 1493
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1494
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v1

    .line 1481
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->args:[Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1480
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1484
    :cond_2
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_3

    .line 1486
    :pswitch_1
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1496
    :goto_4
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->test()V

    .line 1541
    .end local v0           #i:I
    :goto_5
    return-void

    .line 1489
    .restart local v0       #i:I
    :pswitch_2
    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_4

    .line 1501
    .end local v0           #i:I
    :cond_3
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_1

    .line 1503
    :pswitch_3
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_5

    .line 1506
    :pswitch_4
    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_5

    .line 1514
    :cond_4
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v1, v4, :cond_5

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v1

    :goto_6
    sparse-switch v1, :sswitch_data_0

    .line 1535
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v2, 0x10

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v3, v1, v2

    .line 1536
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1537
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v1

    .line 1514
    :cond_5
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_6

    .line 1517
    :sswitch_0
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v1, v4, :cond_6

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v1

    :goto_7
    packed-switch v1, :pswitch_data_3

    .line 1525
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v2, 0xe

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v3, v1, v2

    .line 1526
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1527
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v1

    .line 1517
    :cond_6
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_7

    .line 1519
    :pswitch_5
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1529
    :goto_8
    invoke-direct {p0, v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_5

    .line 1522
    :pswitch_6
    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_8

    .line 1532
    :sswitch_1
    invoke-direct {p0, v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_5

    .line 1473
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 1501
    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1484
    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1514
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch

    .line 1517
    :pswitch_data_3
    .packed-switch 0x18
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final value()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x12

    const/4 v7, -0x1

    .line 1546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1547
    .local v3, value:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1548
    .local v1, hexValue:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1550
    .local v2, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    const/4 v0, 0x0

    .line 1552
    .local v0, arg:Ljava/lang/String;
    :sswitch_0
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v4, v7, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v4

    :goto_0
    sparse-switch v4, :sswitch_data_0

    .line 1590
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v5, 0x11

    iget v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v6, v4, v5

    .line 1591
    invoke-direct {p0, v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1592
    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v4

    .line 1552
    :cond_0
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0

    .line 1554
    :sswitch_1
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v2

    .line 1555
    iget-object v4, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    :goto_1
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    if-ne v4, v7, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v4

    :goto_2
    sparse-switch v4, :sswitch_data_1

    .line 1607
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v5, v4, v6

    .line 1611
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1558
    :sswitch_2
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v2

    .line 1559
    iget-object v4, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1562
    :sswitch_3
    const/16 v4, 0xb

    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v2

    .line 1563
    iget-object v4, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1566
    :sswitch_4
    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v2

    .line 1567
    iget-object v4, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1570
    :sswitch_5
    const/16 v4, 0x13

    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v2

    .line 1571
    iget-object v4, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1574
    :sswitch_6
    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v2

    .line 1575
    iget-object v4, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1578
    :sswitch_7
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->backslashValue()Ljava/lang/String;

    move-result-object v1

    .line 1579
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1582
    :sswitch_8
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->argument()Ljava/lang/String;

    move-result-object v0

    .line 1583
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1586
    :sswitch_9
    const/16 v4, 0x17

    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v2

    .line 1587
    iget-object v4, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1594
    :cond_1
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_2

    .line 1552
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x6 -> :sswitch_8
        0xb -> :sswitch_3
        0xc -> :sswitch_6
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
        0x15 -> :sswitch_7
        0x17 -> :sswitch_9
    .end sparse-switch

    .line 1594
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x15 -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public final value_start(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 1616
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->value()Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, value:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1618
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1623
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_la1:[I

    const/16 v2, 0x1d

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_gen:I

    aput v3, v1, v2

    .line 1626
    :goto_1
    return-void

    .line 1618
    :cond_0
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->jj_ntk:I

    goto :goto_0

    .line 1620
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->asterisk_start(Ljava/util/List;)V

    goto :goto_1

    .line 1618
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method
