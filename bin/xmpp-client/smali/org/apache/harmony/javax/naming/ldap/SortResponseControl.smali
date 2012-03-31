.class public final Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;
.super Lorg/apache/harmony/javax/naming/ldap/BasicControl;
.source "SortResponseControl.java"


# static fields
.field static ASN1_SORTRESPONSE:Lorg/apache/harmony/security/asn1/ASN1Type; = null

.field public static final OID:Ljava/lang/String; = "1.2.840.113556.1.4.474"

.field private static final serialVersionUID:J = 0x475f63ee9f4bdbddL


# instance fields
.field private final badAttrId:Ljava/lang/String;

.field private final resultCode:I

.field private transient sorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    .line 55
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 56
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    aput-object v3, v1, v2

    .line 54
    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;->ASN1_SORTRESPONSE:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[B)V
    .locals 3
    .parameter "id"
    .parameter "criticality"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 90
    const-string v1, "1.2.840.113556.1.4.474"

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/harmony/javax/naming/ldap/BasicControl;-><init>(Ljava/lang/String;Z[B)V

    .line 84
    iput-boolean v2, p0, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;->sorted:Z

    .line 92
    sget-object v1, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;->ASN1_SORTRESPONSE:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v1, p3}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/internal/SortResult;

    .line 93
    .local v0, sr:Lorg/apache/harmony/jndi/internal/SortResult;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/internal/SortResult;->getSortresult()I

    move-result v1

    iput v1, p0, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;->resultCode:I

    .line 94
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/internal/SortResult;->getAttributeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;->badAttrId:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;->getResultCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;->sorted:Z

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iput-boolean v2, p0, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;->sorted:Z

    goto :goto_0
.end method


# virtual methods
.method public getAttributeID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;->badAttrId:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Lorg/apache/harmony/javax/naming/NamingException;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;->getResultCode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/harmony/jndi/internal/Util;->getExceptionFromErrorCode(I)Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v0

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;->resultCode:I

    return v0
.end method

.method public isSorted()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;->sorted:Z

    return v0
.end method
