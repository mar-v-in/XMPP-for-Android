.class public Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;
.super Ljava/lang/Object;
.source "Ticket.java"


# static fields
.field static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field public static final TICKET_ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit;


# instance fields
.field private encoded:[B

.field private final realm:Ljava/lang/String;

.field private final sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 53
    new-instance v0, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket$1;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 54
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    .line 56
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    .line 57
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    .line 59
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    .line 53
    invoke-direct {v0, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 80
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .line 81
    const/16 v1, 0x40

    sget-object v2, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 80
    invoke-direct {v0, v1, v4, v2}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;->TICKET_ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;)V
    .locals 0
    .parameter "realm"
    .parameter "sname"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;->sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    .line 85
    iput-object p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;->realm:Ljava/lang/String;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;-><init>(Ljava/lang/String;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;->encoded:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;->encoded:[B

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getSname()Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;->sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    return-object v0
.end method
