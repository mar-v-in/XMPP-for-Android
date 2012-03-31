.class public Lorg/apache/harmony/security/x509/Time;
.super Ljava/lang/Object;
.source "Time.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice; = null

.field private static final JAN_01_2050:J = 0x24bce5cf000L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lorg/apache/harmony/security/x509/Time$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    .line 47
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1UTCTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1UTCTime;

    move-result-object v3

    aput-object v3, v1, v2

    .line 46
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Time$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
