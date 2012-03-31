.class public final Lorg/apache/harmony/javax/naming/ldap/PagedResultsControl;
.super Lorg/apache/harmony/javax/naming/ldap/BasicControl;
.source "PagedResultsControl.java"


# static fields
.field static ASN1_ENCODER:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final OID:Ljava/lang/String; = "1.2.840.113556.1.4.319"

.field private static final serialVersionUID:J = 0x5cc5344357803c0aL


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/PagedResultsControl$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    .line 44
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 45
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    aput-object v3, v1, v2

    .line 43
    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/ldap/PagedResultsControl$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/javax/naming/ldap/PagedResultsControl;->ASN1_ENCODER:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 33
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3
    .parameter "pageSize"
    .parameter "criticality"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "1.2.840.113556.1.4.319"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/harmony/javax/naming/ldap/BasicControl;-><init>(Ljava/lang/String;Z[B)V

    .line 72
    sget-object v0, Lorg/apache/harmony/javax/naming/ldap/PagedResultsControl;->ASN1_ENCODER:Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v1, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;

    .line 73
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;-><init>(I[B)V

    .line 72
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/PagedResultsControl;->value:[B

    .line 74
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 2
    .parameter "pageSize"
    .parameter "cookie"
    .parameter "criticality"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const-string v0, "1.2.840.113556.1.4.319"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lorg/apache/harmony/javax/naming/ldap/BasicControl;-><init>(Ljava/lang/String;Z[B)V

    .line 79
    sget-object v0, Lorg/apache/harmony/javax/naming/ldap/PagedResultsControl;->ASN1_ENCODER:Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v1, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;

    .line 80
    invoke-direct {v1, p1, p2}, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;-><init>(I[B)V

    .line 79
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/PagedResultsControl;->value:[B

    .line 81
    return-void
.end method
