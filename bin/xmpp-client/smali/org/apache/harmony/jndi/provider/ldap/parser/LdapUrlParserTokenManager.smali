.class public Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;
.super Ljava/lang/Object;
.source "LdapUrlParserTokenManager.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field protected input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 25
    new-array v0, v6, [J

    const-wide/16 v1, -0x21

    aput-wide v1, v0, v5

    const/4 v1, 0x3

    .line 26
    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    .line 25
    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjbitVec0:[J

    .line 27
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnextStates:[I

    .line 29
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    .line 30
    const-string v1, ","

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "!"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 31
    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u0085"

    aput-object v2, v0, v1

    .line 29
    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 21
    return-void

    .line 27
    :array_0
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 35
    const/16 v0, 0x1d

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjrounds:[I

    .line 36
    const/16 v0, 0x3a

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    .line 39
    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curLexState:I

    .line 41
    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->defaultLexState:I

    .line 53
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;-><init>(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V

    .line 59
    invoke-virtual {p0, p2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->SwitchTo(I)V

    .line 60
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 445
    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjround:I

    .line 446
    const/16 v0, 0x1d

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-gtz v1, :cond_0

    .line 449
    return-void

    .line 447
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method private final jjAddStates(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 115
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 116
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 117
    return-void

    :cond_0
    move p1, v0

    .end local v0           #start:I
    .restart local p1
    goto :goto_0
.end method

.method private final jjCheckNAdd(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 122
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 124
    :cond_0
    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 150
    const/4 v8, 0x0

    .line 151
    .local v8, startsAt:I
    const/16 v9, 0x1d

    iput v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    .line 152
    const/4 v1, 0x1

    .line 153
    .local v1, i:I
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 154
    const v3, 0x7fffffff

    .line 156
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 157
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->ReInitRounds()V

    .line 159
    :cond_0
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_5

    .line 160
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 162
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    sparse-switch v9, :sswitch_data_0

    .line 214
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 370
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 371
    iput v3, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjmatchedKind:I

    .line 372
    iput p2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjmatchedPos:I

    .line 373
    const v3, 0x7fffffff

    .line 375
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 376
    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x1d

    if-ne v1, v8, :cond_13

    .line 382
    :goto_3
    return p2

    .line 164
    .restart local v4       #l:J
    :sswitch_0
    const-wide v9, 0x7fff7ffffffffbffL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    .line 165
    const/16 v9, 0x10

    if-le v3, v9, :cond_4

    .line 166
    const/16 v3, 0x10

    .line 169
    :cond_4
    const-wide/high16 v9, 0x3fe

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 170
    const/16 v9, 0xe

    if-le v3, v9, :cond_2

    .line 171
    const/16 v3, 0xe

    .line 174
    goto :goto_1

    .line 176
    :sswitch_1
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_2

    const/4 v9, 0x2

    if-le v3, v9, :cond_2

    .line 177
    const/4 v3, 0x2

    .line 179
    goto :goto_1

    .line 181
    :sswitch_2
    const-wide/high16 v9, 0x3fe

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/16 v9, 0xe

    if-le v3, v9, :cond_2

    .line 182
    const/16 v3, 0xe

    .line 184
    goto :goto_1

    .line 186
    :sswitch_3
    const-wide v9, 0x7fff7ffffffffbffL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/16 v9, 0x10

    if-le v3, v9, :cond_2

    .line 187
    const/16 v3, 0x10

    .line 189
    goto :goto_1

    .line 191
    :sswitch_4
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    if-le v3, v9, :cond_2

    .line 192
    const/4 v3, 0x1

    .line 194
    goto :goto_1

    .line 197
    :sswitch_5
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_2

    .line 198
    const/16 v9, 0x11

    invoke-direct {p0, v9}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 202
    :sswitch_6
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_2

    .line 203
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x12

    aput v11, v9, v10

    goto/16 :goto_1

    .line 207
    :sswitch_7
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_2

    .line 208
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x17

    aput v11, v9, v10

    goto/16 :goto_1

    .line 215
    .end local v4           #l:J
    :cond_5
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_10

    .line 216
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 218
    .restart local v4       #l:J
    :cond_6
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 354
    :cond_7
    :goto_4
    :pswitch_0
    if-ne v1, v8, :cond_6

    goto/16 :goto_2

    .line 220
    :pswitch_1
    const/16 v9, 0x10

    if-le v3, v9, :cond_8

    .line 221
    const/16 v3, 0x10

    .line 223
    :cond_8
    const-wide v9, 0x7ffff8007ffff80L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    .line 224
    const/16 v9, 0xd

    if-le v3, v9, :cond_9

    .line 225
    const/16 v3, 0xd

    .line 232
    :cond_9
    :goto_5
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x6c

    if-ne v9, v10, :cond_b

    .line 233
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjAddStates(II)V

    goto :goto_4

    .line 227
    :cond_a
    const-wide v9, 0x7e0000007eL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 228
    const/16 v9, 0xc

    if-le v3, v9, :cond_9

    .line 229
    const/16 v3, 0xc

    goto :goto_5

    .line 234
    :cond_b
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x73

    if-ne v9, v10, :cond_c

    .line 235
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0xa

    aput v11, v9, v10

    goto :goto_4

    .line 236
    :cond_c
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x6f

    if-ne v9, v10, :cond_d

    .line 237
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x7

    aput v11, v9, v10

    goto :goto_4

    .line 238
    :cond_d
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x62

    if-ne v9, v10, :cond_e

    .line 239
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x5

    aput v11, v9, v10

    goto :goto_4

    .line 240
    :cond_e
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x78

    if-ne v9, v10, :cond_f

    .line 241
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 242
    :cond_f
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x58

    if-ne v9, v10, :cond_7

    .line 243
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 247
    :pswitch_2
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x78

    if-ne v9, v10, :cond_7

    .line 248
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 252
    :pswitch_3
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x65

    if-ne v9, v10, :cond_7

    const/4 v9, 0x3

    if-le v3, v9, :cond_7

    .line 253
    const/4 v3, 0x3

    .line 255
    goto/16 :goto_4

    .line 257
    :pswitch_4
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x73

    if-ne v9, v10, :cond_7

    .line 258
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 262
    :pswitch_5
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x61

    if-ne v9, v10, :cond_7

    .line 263
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x4

    aput v11, v9, v10

    goto/16 :goto_4

    .line 267
    :pswitch_6
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x62

    if-ne v9, v10, :cond_7

    .line 268
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x5

    aput v11, v9, v10

    goto/16 :goto_4

    .line 272
    :pswitch_7
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x6e

    if-ne v9, v10, :cond_7

    .line 273
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 277
    :pswitch_8
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x6f

    if-ne v9, v10, :cond_7

    .line 278
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x7

    aput v11, v9, v10

    goto/16 :goto_4

    .line 282
    :pswitch_9
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x62

    if-ne v9, v10, :cond_7

    const/4 v9, 0x3

    if-le v3, v9, :cond_7

    .line 283
    const/4 v3, 0x3

    .line 285
    goto/16 :goto_4

    .line 287
    :pswitch_a
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x75

    if-ne v9, v10, :cond_7

    .line 288
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x9

    aput v11, v9, v10

    goto/16 :goto_4

    .line 292
    :pswitch_b
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x73

    if-ne v9, v10, :cond_7

    .line 293
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0xa

    aput v11, v9, v10

    goto/16 :goto_4

    .line 297
    :pswitch_c
    const-wide v9, 0x7e0000007eL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    const/16 v9, 0xc

    if-le v3, v9, :cond_7

    .line 298
    const/16 v3, 0xc

    .line 300
    goto/16 :goto_4

    .line 302
    :pswitch_d
    const-wide v9, 0x7ffff8007ffff80L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    const/16 v9, 0xd

    if-le v3, v9, :cond_7

    .line 303
    const/16 v3, 0xd

    .line 305
    goto/16 :goto_4

    .line 307
    :pswitch_e
    const/16 v9, 0x10

    if-le v3, v9, :cond_7

    .line 308
    const/16 v3, 0x10

    .line 310
    goto/16 :goto_4

    .line 312
    :pswitch_f
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x6c

    if-ne v9, v10, :cond_7

    .line 313
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_4

    .line 317
    :pswitch_10
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x70

    if-ne v9, v10, :cond_7

    .line 318
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x13

    aput v11, v9, v10

    goto/16 :goto_4

    .line 322
    :pswitch_11
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x61

    if-ne v9, v10, :cond_7

    .line 323
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x14

    aput v11, v9, v10

    goto/16 :goto_4

    .line 327
    :pswitch_12
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x64

    if-ne v9, v10, :cond_7

    .line 328
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x15

    aput v11, v9, v10

    goto/16 :goto_4

    .line 332
    :pswitch_13
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x73

    if-ne v9, v10, :cond_7

    .line 333
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x18

    aput v11, v9, v10

    goto/16 :goto_4

    .line 337
    :pswitch_14
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x70

    if-ne v9, v10, :cond_7

    .line 338
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x19

    aput v11, v9, v10

    goto/16 :goto_4

    .line 342
    :pswitch_15
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x61

    if-ne v9, v10, :cond_7

    .line 343
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x1a

    aput v11, v9, v10

    goto/16 :goto_4

    .line 347
    :pswitch_16
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v10, 0x64

    if-ne v9, v10, :cond_7

    .line 348
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    const/16 v11, 0x1b

    aput v11, v9, v10

    goto/16 :goto_4

    .line 356
    .end local v4           #l:J
    :cond_10
    iget-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 357
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 359
    .local v6, l2:J
    :cond_11
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 368
    :cond_12
    :goto_6
    if-ne v1, v8, :cond_11

    goto/16 :goto_2

    .line 361
    :pswitch_17
    sget-object v9, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_12

    const/16 v9, 0x10

    if-le v3, v9, :cond_12

    .line 362
    const/16 v3, 0x10

    .line 364
    goto :goto_6

    .line 380
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_13
    :try_start_0
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 162
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xe -> :sswitch_2
        0xf -> :sswitch_3
        0x11 -> :sswitch_4
        0x12 -> :sswitch_5
        0x13 -> :sswitch_6
        0x17 -> :sswitch_5
        0x18 -> :sswitch_7
    .end sparse-switch

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 359
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 388
    iget-char v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 412
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 390
    :sswitch_0
    const/16 v0, 0x11

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 392
    :sswitch_1
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 394
    :sswitch_2
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 396
    :sswitch_3
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 398
    :sswitch_4
    const/16 v0, 0x9

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 400
    :sswitch_5
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 402
    :sswitch_6
    const/16 v0, 0xf

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 404
    :sswitch_7
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 406
    :sswitch_8
    const/16 v0, 0xb

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 408
    :sswitch_9
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 410
    :sswitch_a
    const/16 v0, 0x12

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 388
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x21 -> :sswitch_1
        0x25 -> :sswitch_2
        0x2c -> :sswitch_3
        0x2e -> :sswitch_4
        0x2f -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x3d -> :sswitch_8
        0x3f -> :sswitch_9
        0x85 -> :sswitch_a
    .end sparse-switch
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .parameter "pos"
    .parameter "kind"

    .prologue
    .line 417
    iput p2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjmatchedKind:I

    .line 418
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjmatchedPos:I

    .line 419
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 423
    .line 425
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public ReInit(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjmatchedPos:I

    .line 432
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curLexState:I

    .line 433
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    .line 434
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->ReInitRounds()V

    .line 435
    return-void
.end method

.method public ReInit(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->ReInit(Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;)V

    .line 440
    invoke-virtual {p0, p2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->SwitchTo(I)V

    .line 441
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .parameter "lexState"

    .prologue
    .line 458
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 459
    :cond_0
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    const/4 v2, 0x2

    .line 459
    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 463
    :cond_1
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curLexState:I

    .line 465
    return-void
.end method

.method public getNextToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .locals 13

    .prologue
    const v2, 0x7fffffff

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 65
    const/4 v8, 0x0

    .line 69
    .local v8, curPos:I
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->BeginToken()C

    move-result v0

    iput-char v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    iput v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjmatchedKind:I

    .line 77
    iput v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjmatchedPos:I

    .line 78
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v8

    .line 79
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjmatchedKind:I

    if-eq v0, v2, :cond_1

    .line 80
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v8, :cond_0

    .line 81
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjmatchedPos:I

    sub-int v2, v8, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->backup(I)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjFillToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v11

    .local v11, matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    move-object v12, v11

    .line 84
    .end local v11           #matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .local v12, matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :goto_0
    return-object v12

    .line 70
    .end local v12           #matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :catch_0
    move-exception v9

    .line 71
    .local v9, e:Ljava/io/IOException;
    iput v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjmatchedKind:I

    .line 72
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjFillToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v11

    .restart local v11       #matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    move-object v12, v11

    .line 73
    .end local v11           #matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .restart local v12       #matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    goto :goto_0

    .line 86
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #matchedToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    .line 87
    .local v3, error_line:I
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->getEndColumn()I

    move-result v4

    .line 88
    .local v4, error_column:I
    const/4 v5, 0x0

    .line 89
    .local v5, error_after:Ljava/lang/String;
    const/4 v1, 0x0

    .line 91
    .local v1, EOFSeen:Z
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->readChar()C

    .line 92
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->backup(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :goto_1
    if-nez v1, :cond_2

    .line 104
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0, v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->backup(I)V

    .line 105
    if-gt v8, v6, :cond_6

    const-string v5, ""

    .line 107
    :cond_2
    :goto_2
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/TokenMgrError;

    iget v2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curLexState:I

    .line 108
    iget-char v6, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    .line 107
    invoke-direct/range {v0 .. v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    .line 93
    :catch_1
    move-exception v10

    .line 94
    .local v10, e1:Ljava/io/IOException;
    const/4 v1, 0x1

    .line 95
    if-gt v8, v6, :cond_4

    const-string v5, ""

    .line 96
    :goto_3
    iget-char v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    iget-char v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->curChar:C

    const/16 v2, 0xd

    if-ne v0, v2, :cond_5

    .line 97
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 98
    const/4 v4, 0x0

    goto :goto_1

    .line 95
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 100
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 105
    .end local v10           #e1:Ljava/io/IOException;
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method protected jjFillToken()Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .locals 9

    .prologue
    .line 133
    sget-object v7, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v8, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjmatchedKind:I

    aget-object v5, v7, v8

    .line 134
    .local v5, im:Ljava/lang/String;
    if-nez v5, :cond_0

    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, curTokenImage:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->getBeginLine()I

    move-result v1

    .line 136
    .local v1, beginLine:I
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->getBeginColumn()I

    move-result v0

    .line 137
    .local v0, beginColumn:I
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 138
    .local v4, endLine:I
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->input_stream:Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/harmony/jndi/provider/ldap/parser/SimpleCharStream;->getEndColumn()I

    move-result v3

    .line 139
    .local v3, endColumn:I
    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->jjmatchedKind:I

    invoke-static {v7, v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->newToken(ILjava/lang/String;)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v6

    .line 141
    .local v6, t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    iput v1, v6, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->beginLine:I

    .line 142
    iput v4, v6, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->endLine:I

    .line 143
    iput v0, v6, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->beginColumn:I

    .line 144
    iput v3, v6, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->endColumn:I

    .line 146
    return-object v6

    .end local v0           #beginColumn:I
    .end local v1           #beginLine:I
    .end local v2           #curTokenImage:Ljava/lang/String;
    .end local v3           #endColumn:I
    .end local v4           #endLine:I
    .end local v6           #t:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    :cond_0
    move-object v2, v5

    .line 134
    goto :goto_0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 453
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 454
    return-void
.end method
