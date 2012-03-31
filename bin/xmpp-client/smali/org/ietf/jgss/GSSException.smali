.class public Lorg/ietf/jgss/GSSException;
.super Ljava/lang/Exception;
.source "GSSException.java"


# static fields
.field public static final BAD_BINDINGS:I = 0x1

.field public static final BAD_MECH:I = 0x2

.field public static final BAD_MIC:I = 0x6

.field public static final BAD_NAME:I = 0x3

.field public static final BAD_NAMETYPE:I = 0x4

.field public static final BAD_QOP:I = 0xe

.field public static final BAD_STATUS:I = 0x5

.field public static final CONTEXT_EXPIRED:I = 0x7

.field public static final CREDENTIALS_EXPIRED:I = 0x8

.field public static final DEFECTIVE_CREDENTIAL:I = 0x9

.field public static final DEFECTIVE_TOKEN:I = 0xa

.field public static final DUPLICATE_ELEMENT:I = 0x11

.field public static final DUPLICATE_TOKEN:I = 0x13

.field public static final FAILURE:I = 0xb

.field public static final GAP_TOKEN:I = 0x16

.field public static final NAME_NOT_MN:I = 0x12

.field public static final NO_CONTEXT:I = 0xc

.field public static final NO_CRED:I = 0xd

.field public static final OLD_TOKEN:I = 0x14

.field public static final UNAUTHORIZED:I = 0xf

.field public static final UNAVAILABLE:I = 0x10

.field public static final UNSEQ_TOKEN:I = 0x15

.field private static final errorMessages:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x258e6bcae2bb1f50L


# instance fields
.field private major:I

.field private final majorString:Ljava/lang/String;

.field private minor:I

.field private minorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "BAD BINDINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BAD MECH"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 70
    const-string v2, "BAD NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "BAD NAMETYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "BAD STATUS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BAD MIC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 71
    const-string v2, "CONTEXT EXPIRED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CREDENTIALS EXPIRED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DEFECTIVE CREDENTIAL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 72
    const-string v2, "DEFECTIVE TOKEN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NO CONTEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "NO CRED"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "BAD QOP"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 73
    const-string v2, "UNAUTHORIZED"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "UNAVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DUPLICATE ELEMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "NAME NOT MN"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 74
    const-string v2, "DUPLICATE TOKEN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "OLD TOKEN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "UNSEQ TOKEN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "GAP TOKEN"

    aput-object v2, v0, v1

    .line 69
    sput-object v0, Lorg/ietf/jgss/GSSException;->errorMessages:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "majorCode"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 77
    const/16 v0, 0xb

    iput v0, p0, Lorg/ietf/jgss/GSSException;->major:I

    .line 90
    if-lez p1, :cond_0

    const/16 v0, 0x16

    if-gt p1, v0, :cond_0

    .line 91
    iput p1, p0, Lorg/ietf/jgss/GSSException;->major:I

    .line 93
    :cond_0
    sget-object v0, Lorg/ietf/jgss/GSSException;->errorMessages:[Ljava/lang/String;

    iget v1, p0, Lorg/ietf/jgss/GSSException;->major:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/ietf/jgss/GSSException;->majorString:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter "majorCode"
    .parameter "minorCode"
    .parameter "minorString"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/ietf/jgss/GSSException;-><init>(I)V

    .line 98
    iput p2, p0, Lorg/ietf/jgss/GSSException;->minor:I

    .line 99
    iput-object p3, p0, Lorg/ietf/jgss/GSSException;->minorMessage:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public getMajor()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/ietf/jgss/GSSException;->major:I

    return v0
.end method

.method public getMajorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/ietf/jgss/GSSException;->majorString:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/ietf/jgss/GSSException;->getMinorString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, tmp:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/ietf/jgss/GSSException;->getMajorString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, tmp2:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 117
    .end local v1           #tmp2:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1       #tmp2:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/ietf/jgss/GSSException;->minor:I

    return v0
.end method

.method public getMinorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/ietf/jgss/GSSException;->minor:I

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/ietf/jgss/GSSException;->minorMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMinor(ILjava/lang/String;)V
    .locals 0
    .parameter "minorCode"
    .parameter "minorString"

    .prologue
    .line 132
    iput p1, p0, Lorg/ietf/jgss/GSSException;->minor:I

    .line 133
    iput-object p2, p0, Lorg/ietf/jgss/GSSException;->minorMessage:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSSException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
