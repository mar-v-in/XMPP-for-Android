.class public Lorg/apache/harmony/security/x501/DirectoryString;
.super Ljava/lang/Object;
.source "DirectoryString.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lorg/apache/harmony/security/x501/DirectoryString$1;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    .line 47
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->TELETEXSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 48
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UNIVERSALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 49
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->BMPSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v3, v1, v2

    .line 46
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x501/DirectoryString$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
