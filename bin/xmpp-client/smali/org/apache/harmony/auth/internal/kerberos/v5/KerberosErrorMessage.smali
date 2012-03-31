.class public Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;
.super Ljava/lang/Object;
.source "KerberosErrorMessage.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit;

.field private static final KRB_ERROR:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private cname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

.field private crealm:Ljava/lang/String;

.field private ctime:Ljava/util/Date;

.field private cusec:I

.field private errorCode:I

.field private etext:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

.field private stime:Ljava/util/Date;

.field private susec:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    new-instance v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage$1;

    .line 69
    const/16 v1, 0xd

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    .line 70
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    .line 71
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosTime;->getASN1()Lorg/apache/harmony/security/asn1/ASN1Type;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    .line 73
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    .line 74
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosTime;->getASN1()Lorg/apache/harmony/security/asn1/ASN1Type;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 76
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/4 v4, 0x5

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 78
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/4 v4, 0x6

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 80
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/4 v4, 0x7

    sget-object v5, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 81
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/16 v4, 0x8

    sget-object v5, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 83
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/16 v4, 0x9

    sget-object v5, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 84
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/16 v4, 0xa

    sget-object v5, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 86
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/16 v4, 0xb

    sget-object v5, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 88
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/16 v4, 0xc

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 68
    invoke-direct {v0, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->KRB_ERROR:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 128
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .line 129
    const/16 v1, 0x40

    const/16 v2, 0x1e

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->KRB_ERROR:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 128
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Ljava/util/Date;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->ctime:Ljava/util/Date;

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->cusec:I

    return-void
.end method

.method static synthetic access$2(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Ljava/util/Date;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->stime:Ljava/util/Date;

    return-void
.end method

.method static synthetic access$3(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->susec:I

    return-void
.end method

.method static synthetic access$4(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->errorCode:I

    return-void
.end method

.method static synthetic access$5(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->crealm:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->cname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    return-void
.end method

.method static synthetic access$7(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->realm:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    return-void
.end method

.method static synthetic access$9(Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->etext:Ljava/lang/String;

    return-void
.end method

.method public static decode(Lorg/apache/harmony/security/asn1/DerInputStream;)Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Explicit;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;

    return-object v0
.end method


# virtual methods
.method public getCname()Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->cname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    return-object v0
.end method

.method public getCrealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->crealm:Ljava/lang/String;

    return-object v0
.end method

.method public getCtime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->ctime:Ljava/util/Date;

    return-object v0
.end method

.method public getCusec()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->cusec:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->errorCode:I

    return v0
.end method

.method public getEtext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->etext:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getSname()Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    return-object v0
.end method

.method public getStime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->stime:Ljava/util/Date;

    return-object v0
.end method

.method public getSusec()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->susec:I

    return v0
.end method
