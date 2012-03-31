.class public Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
.super Ljava/lang/Object;
.source "LdapUrlParser.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;,
        Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static final DEFAULT_HOST:Ljava/lang/String; = "localhost"

.field private static final DEFAULT_PORT:I = 0x185

.field private static final DEFAULT_SSL_PORT:I = 0x27c

.field private static jj_la1_0:[I


# instance fields
.field private baseObject:Ljava/lang/String;

.field private controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

.field private filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;

.field private hasAttributes:Z

.field private hasExtensions:Z

.field private hasFilter:Z

.field private hasScope:Z

.field private host:Ljava/lang/String;

.field private isEndEOF:Z

.field private final jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

.field private jj_endpos:I

.field private final jj_expentries:Ljava/util/List;

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

.field private final jj_lasttokens:[I

.field private final jj_ls:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;

.field public jj_nt:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

.field private port:I

.field public token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

.field public token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 100
    invoke-static {}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1_init_0()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/16 v7, 0x22

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v2, ""

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->baseObject:Ljava/lang/String;

    .line 59
    const-string v2, "localhost"

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->host:Ljava/lang/String;

    .line 61
    const/16 v2, 0x185

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->port:I

    .line 63
    iput-boolean v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasAttributes:Z

    .line 65
    iput-boolean v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasScope:Z

    .line 67
    iput-boolean v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasFilter:Z

    .line 69
    iput-boolean v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasExtensions:Z

    .line 71
    iput-boolean v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->isEndEOF:Z

    .line 95
    new-array v2, v7, [I

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    .line 114
    new-array v2, v3, [Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    .line 116
    iput-boolean v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_rescan:Z

    .line 118
    iput v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gc:I

    .line 120
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;)V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ls:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentries:Ljava/util/List;

    .line 126
    iput v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_kind:I

    .line 128
    const/16 v2, 0x64

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_lasttokens:[I

    .line 140
    :try_start_0
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;

    .line 145
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 146
    iput v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    .line 147
    iput v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    .line 148
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v7, :cond_0

    .line 151
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 154
    return-void

    .line 141
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 149
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    aput v6, v2, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    invoke-direct {v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 7
    .parameter "stream"

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->baseObject:Ljava/lang/String;

    .line 59
    const-string v1, "localhost"

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->host:Ljava/lang/String;

    .line 61
    const/16 v1, 0x185

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->port:I

    .line 63
    iput-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasAttributes:Z

    .line 65
    iput-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasScope:Z

    .line 67
    iput-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasFilter:Z

    .line 69
    iput-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasExtensions:Z

    .line 71
    iput-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->isEndEOF:Z

    .line 95
    new-array v1, v6, [I

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    .line 114
    new-array v1, v5, [Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    .line 116
    iput-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_rescan:Z

    .line 118
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gc:I

    .line 120
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;)V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ls:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentries:Ljava/util/List;

    .line 126
    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_kind:I

    .line 128
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_lasttokens:[I

    .line 158
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-direct {v1, p1, v5, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    .line 159
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;

    .line 160
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 161
    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    .line 162
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 166
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 169
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    aput v4, v1, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 186
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;-><init>(Ljava/io/Reader;)V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->isEndEOF:Z

    .line 188
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;)V
    .locals 6
    .parameter "tm"

    .prologue
    const/16 v5, 0x22

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->baseObject:Ljava/lang/String;

    .line 59
    const-string v1, "localhost"

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->host:Ljava/lang/String;

    .line 61
    const/16 v1, 0x185

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->port:I

    .line 63
    iput-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasAttributes:Z

    .line 65
    iput-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasScope:Z

    .line 67
    iput-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasFilter:Z

    .line 69
    iput-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasExtensions:Z

    .line 71
    iput-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->isEndEOF:Z

    .line 95
    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    .line 114
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    .line 116
    iput-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_rescan:Z

    .line 118
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gc:I

    .line 120
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;)V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ls:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentries:Ljava/util/List;

    .line 126
    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_kind:I

    .line 128
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_lasttokens:[I

    .line 173
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;

    .line 174
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 175
    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    .line 176
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 180
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 183
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    aput v4, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private convertToUtf8Char(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 324
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 325
    .local v0, bs:[B
    invoke-static {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private jj_2_1(I)Z
    .locals 4
    .parameter "xla"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 654
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la:I

    .line 655
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 657
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_3_1()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 661
    :cond_0
    invoke-direct {p0, v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_save(II)V

    .line 659
    :goto_0
    return v1

    .line 658
    :catch_0
    move-exception v0

    .line 661
    .local v0, ls:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_save(II)V

    goto :goto_0

    .line 660
    .end local v0           #ls:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    .line 661
    invoke-direct {p0, v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_save(II)V

    .line 662
    throw v1
.end method

.method private jj_3_1()Z
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 668
    .local v0, xsp:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 670
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    const/4 v1, 0x1

    .line 674
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jj_add_error_token(II)V
    .locals 6
    .parameter "kind"
    .parameter "pos"

    .prologue
    .line 678
    const/16 v3, 0x64

    if-lt p2, v3, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_endpos:I

    add-int/lit8 v3, v3, 0x1

    if-ne p2, v3, :cond_2

    .line 682
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_lasttokens:[I

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_endpos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_endpos:I

    aput p1, v3, v4

    goto :goto_0

    .line 683
    :cond_2
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_endpos:I

    if-eqz v3, :cond_0

    .line 684
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_endpos:I

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentry:[I

    .line 685
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_endpos:I

    if-lt v0, v3, :cond_4

    .line 688
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentries:Ljava/util/List;

    .line 689
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 688
    if-nez v3, :cond_5

    .line 701
    :goto_2
    if-eqz p2, :cond_0

    .line 702
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_lasttokens:[I

    iput p2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_endpos:I

    add-int/lit8 v4, p2, -0x1

    aput p1, v3, v4

    goto :goto_0

    .line 686
    .end local v1           #it:Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentry:[I

    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_lasttokens:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 690
    .restart local v1       #it:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 691
    .local v2, oldentry:[I
    array-length v3, v2

    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentry:[I

    array-length v4, v4

    if-ne v3, v4, :cond_3

    .line 692
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentry:[I

    array-length v3, v3

    if-lt v0, v3, :cond_6

    .line 697
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentries:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentry:[I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 693
    :cond_6
    aget v3, v2, v0

    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentry:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_3

    .line 692
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

    .line 709
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .local v2, oldToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v4, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-eqz v4, :cond_1

    .line 710
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v4, v4, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 714
    :goto_0
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    .line 715
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget v4, v4, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->kind:I

    if-ne v4, p1, :cond_5

    .line 716
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    .line 717
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gc:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gc:I

    const/16 v5, 0x64

    if-le v4, v5, :cond_0

    .line 718
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gc:I

    .line 719
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    array-length v5, v4

    :goto_1
    if-lt v3, v5, :cond_2

    .line 729
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    return-object v3

    .line 712
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;

    invoke-virtual {v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_0

    .line 719
    :cond_2
    aget-object v1, v4, v3

    .line 720
    .local v1, jj_2_rtn:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;
    move-object v0, v1

    .line 721
    .local v0, c:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;
    :goto_2
    if-nez v0, :cond_3

    .line 719
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 722
    :cond_3
    iget v6, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->gen:I

    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    if-ge v6, v7, :cond_4

    .line 723
    const/4 v6, 0x0

    iput-object v6, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->first:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 725
    :cond_4
    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    goto :goto_2

    .line 731
    .end local v0           #c:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;
    .end local v1           #jj_2_rtn:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;
    :cond_5
    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 732
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_kind:I

    .line 733
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->generateParseException()Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    move-result-object v3

    throw v3
.end method

.method private static jj_la1_init_0()V
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1_0:[I

    .line 109
    return-void

    .line 104
    :array_0
    .array-data 0x4
        0x8et 0xfet 0x1t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x8et 0xfet 0x1t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t
        0x0t 0xd0t 0x0t 0x0t
        0x0t 0xd0t 0x0t 0x0t
        0x8et 0xfet 0x1t 0x0t
        0x8et 0xfet 0x1t 0x0t
        0x8et 0xfet 0x1t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8et 0xfet 0x1t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x8et 0xfet 0x1t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x4t 0xc0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x6t 0x0t
        0x0t 0x0t 0x6t 0x0t
        0x0t 0x0t 0x6t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x6t 0x0t
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_nt:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget v0, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    .line 740
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_nt:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget v0, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0
.end method

.method private final jj_rescan_token()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 745
    iput-boolean v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_rescan:Z

    .line 746
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 764
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_rescan:Z

    .line 765
    return-void

    .line 748
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    aget-object v1, v2, v0

    .line 750
    .local v1, p:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;
    :cond_1
    iget v2, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    if-le v2, v3, :cond_2

    .line 751
    iget v2, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->arg:I

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la:I

    .line 752
    iget-object v2, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->first:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 753
    packed-switch v0, :pswitch_data_0

    .line 759
    :cond_2
    :goto_1
    iget-object v1, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    .line 760
    if-nez v1, :cond_1

    .line 746
    .end local v1           #p:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    .restart local v1       #p:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_3_1()Z
    :try_end_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 761
    .end local v1           #p:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private final jj_save(II)V
    .locals 4
    .parameter "index"
    .parameter "xla"

    .prologue
    .line 768
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    aget-object v0, v2, p1

    .line 769
    .local v0, p:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;
    :goto_0
    iget v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    if-gt v2, v3, :cond_0

    .line 776
    :goto_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    add-int/2addr v2, p2

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->gen:I

    .line 777
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->first:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 778
    iput p2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->arg:I

    .line 779
    return-void

    .line 770
    :cond_0
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    if-nez v2, :cond_1

    .line 771
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;-><init>()V

    iput-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    .end local v0           #p:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;
    .local v1, p:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;
    move-object v0, v1

    .line 772
    .end local v1           #p:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;
    .restart local v0       #p:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;
    goto :goto_1

    .line 774
    :cond_1
    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    goto :goto_0
.end method

.method private final jj_scan_token(I)Z
    .locals 4
    .parameter "kind"

    .prologue
    .line 782
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-ne v2, v3, :cond_3

    .line 783
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la:I

    .line 784
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v2, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-nez v2, :cond_2

    .line 785
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;

    .line 786
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v3

    .line 785
    iput-object v3, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 793
    :goto_0
    iget-boolean v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_rescan:Z

    if-eqz v2, :cond_1

    .line 794
    const/4 v0, 0x0

    .line 795
    .local v0, i:I
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 796
    .local v1, tok:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-ne v1, v2, :cond_4

    .line 800
    :cond_0
    if-eqz v1, :cond_1

    .line 801
    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_add_error_token(II)V

    .line 804
    .end local v0           #i:I
    .end local v1           #tok:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget v2, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->kind:I

    if-eq v2, p1, :cond_5

    .line 805
    const/4 v2, 0x1

    .line 810
    :goto_2
    return v2

    .line 788
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v2, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_0

    .line 791
    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v2, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_0

    .line 797
    .restart local v0       #i:I
    .restart local v1       #tok:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 798
    iget-object v1, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_1

    .line 807
    .end local v0           #i:I
    .end local v1           #tok:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :cond_5
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_scanpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_lastpos:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-ne v2, v3, :cond_6

    .line 808
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ls:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$LookaheadSuccess;

    throw v2

    .line 810
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
    .line 44
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;

    new-instance v1, Ljava/io/FileInputStream;

    .line 45
    const-string v2, "parser.url.test"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;-><init>(Ljava/io/InputStream;)V

    .line 49
    .local v0, parser:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->test()V

    .line 51
    return-void
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 959
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 960
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/4 v5, -0x1

    .line 965
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->ReInit(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V

    .line 970
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 971
    iput v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    .line 972
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    .line 973
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    .line 976
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 979
    return-void

    .line 966
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 967
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 974
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    aput v5, v2, v1

    .line 973
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 977
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    invoke-direct {v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    .line 976
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .parameter "stream"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 983
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 984
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->ReInit(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V

    .line 985
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 986
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    .line 987
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    .line 988
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 991
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 994
    return-void

    .line 989
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    aput v3, v1, v0

    .line 988
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 992
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public ReInit(Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;)V
    .locals 3
    .parameter "tm"

    .prologue
    const/4 v2, -0x1

    .line 998
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;

    .line 999
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1000
    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    .line 1001
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    .line 1002
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 1005
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1008
    return-void

    .line 1003
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    aput v2, v1, v0

    .line 1002
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_rtns:[Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final attrDescr()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->value()Ljava/lang/String;

    .line 192
    return-void
.end method

.method public final attributes()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, attrs:Ljava/util/List;
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_2

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 234
    :pswitch_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v3, 0x11

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    .line 237
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasAttributes:Z

    .line 239
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    if-nez v2, :cond_0

    .line 241
    new-instance v2, Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-direct {v2}, Lorg/apache/harmony/javax/naming/directory/SearchControls;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    .line 243
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    .line 244
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 243
    invoke-virtual {v3, v2}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 246
    :cond_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_5

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 252
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v3, 0x12

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    .line 255
    :goto_3
    return-void

    .line 197
    :cond_2
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    .line 210
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->value()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, value:Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_3

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_4
    packed-switch v2, :pswitch_data_2

    .line 229
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v3, 0x10

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    goto :goto_1

    .line 212
    :cond_3
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_4

    .line 215
    :pswitch_2
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 216
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->value()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_4

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_5
    packed-switch v2, :pswitch_data_3

    .line 223
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v3, 0xf

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    goto :goto_1

    .line 218
    :cond_4
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_5

    .line 246
    .end local v1           #value:Ljava/lang/String;
    :cond_5
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_2

    .line 248
    :pswitch_3
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 249
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->scope()V

    goto :goto_3

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 246
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
    .end packed-switch

    .line 212
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch

    .line 218
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch
.end method

.method public final ch()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v4, -0x1

    .line 260
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 311
    :pswitch_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v3, v2, v5

    .line 312
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 313
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v2

    .line 260
    :cond_0
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    .line 262
    :pswitch_1
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 263
    .local v0, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 317
    .local v1, value:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 266
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_2
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 267
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hexDigit()Ljava/lang/String;

    move-result-object v1

    .line 268
    .restart local v1       #value:Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->convertToUtf8Char(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    goto :goto_1

    .line 271
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_3
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 272
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 273
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_1

    .line 275
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_4
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 276
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 277
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_1

    .line 279
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_5
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 280
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 281
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_1

    .line 283
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_6
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 284
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 285
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_1

    .line 287
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_7
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 288
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 289
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_1

    .line 291
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_8
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 292
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 293
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_1

    .line 295
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_9
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 296
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 297
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_1

    .line 299
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_a
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 300
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 301
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_1

    .line 303
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_b
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 304
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 305
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_1

    .line 307
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_c
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 308
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 309
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_1

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public final dn()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v0, dn:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->value()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, value:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 356
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v4, 0xe

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v5, v3, v4

    .line 359
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->baseObject:Ljava/lang/String;

    .line 360
    return-void

    .line 338
    :cond_0
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    .line 341
    :pswitch_0
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    .line 342
    .local v1, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->value()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 350
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v4, 0xd

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_1

    .line 345
    :cond_1
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_2

    .line 338
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 345
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 364
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
    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 368
    return-void
.end method

.method public final extension()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 371
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 376
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v1, 0x19

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v2, v0, v1

    .line 379
    :goto_1
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v0

    :goto_2
    sparse-switch v0, :sswitch_data_0

    .line 389
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v1, 0x1a

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v2, v0, v1

    .line 390
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 391
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v0

    .line 371
    :cond_0
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    .line 373
    :pswitch_0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_1

    .line 379
    :cond_1
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_2

    .line 382
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->oid()Ljava/lang/String;

    .line 393
    :goto_3
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v0

    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 399
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v1, 0x1b

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v2, v0, v1

    .line 402
    :goto_5
    return-void

    .line 385
    :sswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 386
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->oid()Ljava/lang/String;

    goto :goto_3

    .line 393
    :cond_2
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_4

    .line 395
    :pswitch_1
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 396
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->value()Ljava/lang/String;

    goto :goto_5

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xe -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch

    .line 393
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch
.end method

.method public final extensions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 405
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->extension()V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasExtensions:Z

    .line 407
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 423
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v1, 0x18

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v2, v0, v1

    .line 426
    :goto_1
    return-void

    .line 407
    :cond_0
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    .line 410
    :pswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 411
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->extension()V

    .line 412
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 417
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v1, 0x17

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v2, v0, v1

    goto :goto_1

    .line 412
    :cond_1
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_2

    .line 407
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 412
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final filter()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 430
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 450
    :pswitch_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v3, 0x15

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    .line 453
    :goto_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 459
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v3, 0x16

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    .line 462
    :goto_3
    return-void

    .line 430
    :cond_0
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    .line 443
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->value()Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, value:Ljava/lang/String;
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;

    .line 445
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-direct {v0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;-><init>(Ljava/io/Reader;)V

    .line 446
    .local v0, parser:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .line 447
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasFilter:Z

    goto :goto_1

    .line 453
    .end local v0           #parser:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_2

    .line 455
    :pswitch_2
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 456
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->extensions()V

    goto :goto_3

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 453
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch
.end method

.method public generateParseException()Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
    .locals 9

    .prologue
    const/16 v8, 0x13

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 466
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 467
    new-array v3, v8, [Z

    .line 468
    .local v3, la1tokens:[Z
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_kind:I

    if-ltz v4, :cond_0

    .line 469
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_kind:I

    aput-boolean v7, v3, v4

    .line 470
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_kind:I

    .line 472
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x22

    if-lt v1, v4, :cond_1

    .line 481
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v8, :cond_5

    .line 488
    iput v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_endpos:I

    .line 489
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_rescan_token()V

    .line 490
    invoke-direct {p0, v6, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_add_error_token(II)V

    .line 491
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 492
    .local v0, exptokseq:[[I
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_7

    .line 495
    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    sget-object v6, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4

    .line 473
    .end local v0           #exptokseq:[[I
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    if-ne v4, v5, :cond_2

    .line 474
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    const/16 v4, 0x20

    if-lt v2, v4, :cond_3

    .line 472
    .end local v2           #j:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    .restart local v2       #j:I
    :cond_3
    sget-object v4, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v7, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 476
    aput-boolean v7, v3, v2

    .line 474
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 482
    .end local v2           #j:I
    :cond_5
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_6

    .line 483
    new-array v4, v7, [I

    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentry:[I

    .line 484
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentry:[I

    aput v1, v4, v6

    .line 485
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentries:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentry:[I

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 493
    .restart local v0       #exptokseq:[[I
    :cond_7
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getBaseObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->baseObject:Ljava/lang/String;

    return-object v0
.end method

.method public getControls()Lorg/apache/harmony/javax/naming/directory/SearchControls;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    return-object v0
.end method

.method public getFilter()Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->filter:Lorg/apache/harmony/jndi/provider/ldap/Filter;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 527
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    .line 528
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    .line 529
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    return-object v0

    .line 525
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->port:I

    return v0
.end method

.method public final getToken(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .locals 4
    .parameter "index"

    .prologue
    .line 544
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 545
    .local v1, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .local v2, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :goto_0
    if-lt v0, p1, :cond_0

    .line 552
    return-object v2

    .line 546
    :cond_0
    iget-object v3, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    if-eqz v3, :cond_1

    .line 547
    iget-object v1, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 545
    .end local v2           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .restart local v1       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .restart local v2       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_0

    .line 549
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->token_source:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .end local v2           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .restart local v1       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_1
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasAttributes:Z

    return v0
.end method

.method public hasExtensions()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasExtensions:Z

    return v0
.end method

.method public hasFilter()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasFilter:Z

    return v0
.end method

.method public hasScope()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasScope:Z

    return v0
.end method

.method public final hexDigit()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xf

    const/16 v4, 0xe

    const/16 v3, 0xc

    const/4 v5, -0x1

    .line 574
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 585
    :pswitch_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/4 v3, 0x7

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    .line 586
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 587
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v2

    .line 574
    :cond_0
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    .line 576
    :pswitch_1
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 589
    .local v0, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :goto_1
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 590
    .local v1, value:Ljava/lang/String;
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 601
    :pswitch_2
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v3, 0x8

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    .line 602
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 603
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v2

    .line 579
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 580
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_1

    .line 582
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :pswitch_4
    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 583
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_1

    .line 590
    .restart local v1       #value:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_2

    .line 592
    :pswitch_5
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 605
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

    .line 608
    return-object v1

    .line 595
    :pswitch_6
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 596
    goto :goto_3

    .line 598
    :pswitch_7
    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 599
    goto :goto_3

    .line 574
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 590
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final hostport()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v1, h:Ljava/lang/StringBuilder;
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->ch()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, ch:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 636
    :pswitch_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v3, 0xb

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    .line 640
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->host:Ljava/lang/String;

    .line 641
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 648
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v3, 0xc

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    .line 651
    :goto_2
    return-void

    .line 620
    :cond_0
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    .line 641
    :cond_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_1

    .line 643
    :pswitch_2
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 644
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->number()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->port:I

    goto :goto_2

    .line 620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 641
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_2
    .end packed-switch
.end method

.method public final number()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xf

    const/16 v3, 0xe

    const/4 v5, -0x1

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 816
    .local v1, value:Ljava/lang/StringBuilder;
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 851
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/4 v3, 0x6

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    .line 852
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 853
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v2

    .line 816
    :cond_0
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    .line 818
    :pswitch_0
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 819
    .local v0, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 822
    .end local v0           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :pswitch_1
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 823
    .restart local v0       #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :goto_2
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 831
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/4 v3, 0x4

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    goto :goto_1

    .line 825
    :cond_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_3

    .line 834
    :pswitch_2
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_2

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_4
    packed-switch v2, :pswitch_data_2

    .line 844
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/4 v3, 0x5

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    .line 845
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 846
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v2

    .line 834
    :cond_2
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_4

    .line 836
    :pswitch_3
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 837
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 840
    :pswitch_4
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 841
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 825
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 834
    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final oid()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 865
    .local v2, value:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 866
    .local v0, number:Ljava/lang/String;
    const/4 v1, 0x0

    .line 867
    .local v1, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->number()Ljava/lang/String;

    move-result-object v0

    .line 868
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    :pswitch_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    .line 871
    iget-object v3, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->number()Ljava/lang/String;

    move-result-object v0

    .line 873
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 879
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v4, 0x1c

    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v5, v3, v4

    .line 885
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 874
    :cond_0
    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final parseURL()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 893
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    .line 894
    .local v0, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    const-string v2, "ldaps://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    const/16 v1, 0x27c

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->port:I

    .line 897
    :cond_0
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v1, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 913
    :pswitch_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v3, v1, v2

    .line 916
    :goto_1
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v1, v4, :cond_3

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v1

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 949
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/4 v2, 0x3

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v3, v1, v2

    .line 952
    :goto_3
    iget-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->isEndEOF:Z

    if-eqz v1, :cond_1

    .line 953
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->eof()V

    .line 955
    :cond_1
    return-void

    .line 897
    :cond_2
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    .line 910
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hostport()V

    goto :goto_1

    .line 916
    :cond_3
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_2

    .line 918
    :pswitch_2
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 919
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v1, v4, :cond_4

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v1

    :goto_4
    packed-switch v1, :pswitch_data_2

    .line 944
    :pswitch_3
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/4 v2, 0x2

    iget v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v3, v1, v2

    goto :goto_3

    .line 919
    :cond_4
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_4

    .line 932
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->dn()V

    .line 933
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v1, v4, :cond_5

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v1

    :goto_5
    packed-switch v1, :pswitch_data_3

    .line 939
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v2, v1, v5

    goto :goto_3

    .line 933
    :cond_5
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_5

    .line 935
    :pswitch_5
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 936
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->attributes()V

    goto :goto_3

    .line 897
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 916
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
    .end packed-switch

    .line 919
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 933
    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_5
    .end packed-switch
.end method

.method public final scope()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    .line 1013
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1030
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v3, 0x13

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    .line 1033
    :goto_1
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v2, v5, :cond_4

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 1039
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v3, 0x14

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    .line 1042
    :goto_3
    return-void

    .line 1013
    :cond_0
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    .line 1015
    :pswitch_0
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v1

    .line 1016
    .local v1, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iget-object v0, v1, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 1017
    .local v0, scope:Ljava/lang/String;
    iput-boolean v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->hasScope:Z

    .line 1018
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    if-nez v2, :cond_1

    .line 1019
    new-instance v2, Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-direct {v2}, Lorg/apache/harmony/javax/naming/directory/SearchControls;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    .line 1021
    :cond_1
    const-string v2, "base"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1022
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setSearchScope(I)V

    goto :goto_1

    .line 1023
    :cond_2
    const-string v2, "one"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1024
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setSearchScope(I)V

    goto :goto_1

    .line 1026
    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->controls:Lorg/apache/harmony/javax/naming/directory/SearchControls;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->setSearchScope(I)V

    goto :goto_1

    .line 1033
    .end local v0           #scope:Ljava/lang/String;
    .end local v1           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :cond_4
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_2

    .line 1035
    :pswitch_1
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1036
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->filter()V

    goto :goto_3

    .line 1013
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 1033
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch
.end method

.method public final test()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x12

    const/16 v4, 0x11

    const/4 v3, -0x1

    .line 1045
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1063
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v1, 0x20

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v2, v0, v1

    .line 1064
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_2_1(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1065
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 1073
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v1, 0x1e

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v2, v0, v1

    .line 1074
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1075
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v0

    .line 1045
    :cond_0
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    .line 1047
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->parseURL()V

    .line 1048
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_2

    .line 1056
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v1, 0x1d

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v2, v0, v1

    .line 1057
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1058
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v0

    .line 1048
    :cond_1
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_2

    .line 1050
    :pswitch_1
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1060
    :goto_3
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->test()V

    .line 1105
    :goto_4
    return-void

    .line 1053
    :pswitch_2
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_3

    .line 1065
    :cond_2
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_1

    .line 1067
    :pswitch_3
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_4

    .line 1070
    :pswitch_4
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_4

    .line 1078
    :cond_3
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v0, v3, :cond_4

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v0

    :goto_5
    sparse-switch v0, :sswitch_data_0

    .line 1099
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v1, 0x21

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v2, v0, v1

    .line 1100
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1101
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v0

    .line 1078
    :cond_4
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_5

    .line 1081
    :sswitch_0
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v0

    :goto_6
    packed-switch v0, :pswitch_data_3

    .line 1089
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v1, 0x1f

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v2, v0, v1

    .line 1090
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1091
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;-><init>()V

    throw v0

    .line 1081
    :cond_5
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_6

    .line 1083
    :pswitch_5
    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    .line 1093
    :goto_7
    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_4

    .line 1086
    :pswitch_6
    invoke-direct {p0, v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_7

    .line 1096
    :sswitch_1
    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_consume_token(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    goto :goto_4

    .line 1045
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1065
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1048
    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1078
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch

    .line 1081
    :pswitch_data_3
    .packed-switch 0x11
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final value()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 1108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1111
    .local v1, value:Ljava/lang/StringBuilder;
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->ch()Ljava/lang/String;

    move-result-object v0

    .line 1112
    .local v0, ch:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1129
    :pswitch_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_la1:[I

    const/16 v3, 0x9

    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_gen:I

    aput v4, v2, v3

    .line 1135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1113
    :cond_0
    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->jj_ntk:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
