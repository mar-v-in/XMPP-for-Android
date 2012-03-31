.class Lorg/apache/harmony/javax/naming/ldap/SortResponseControl$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SortResponseControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/naming/ldap/SortResponseControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .parameter "$anonymous0"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/javax/naming/ldap/SortResponseControl$1;->setOptional(I)V

    .line 1
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .parameter "in"

    .prologue
    .line 65
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 66
    .local v3, values:[Ljava/lang/Object;
    new-instance v5, Ljava/math/BigInteger;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, [B

    invoke-direct {v5, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 67
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 68
    .local v2, sortresult:I
    const/4 v0, 0x0

    .line 70
    .local v0, attrtype:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, [B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #attrtype:Ljava/lang/String;
    .local v1, attrtype:Ljava/lang/String;
    move-object v0, v1

    .line 73
    .end local v1           #attrtype:Ljava/lang/String;
    .restart local v0       #attrtype:Ljava/lang/String;
    :goto_0
    new-instance v4, Lorg/apache/harmony/jndi/internal/SortResult;

    invoke-direct {v4, v2, v0}, Lorg/apache/harmony/jndi/internal/SortResult;-><init>(ILjava/lang/String;)V

    return-object v4

    .line 71
    :catch_0
    move-exception v4

    goto :goto_0
.end method
