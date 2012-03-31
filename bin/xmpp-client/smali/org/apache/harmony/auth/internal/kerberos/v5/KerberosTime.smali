.class public Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosTime;
.super Ljava/lang/Object;
.source "KerberosTime.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    move-result-object v0

    .line 31
    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getASN1()Lorg/apache/harmony/security/asn1/ASN1Type;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    return-object v0
.end method
