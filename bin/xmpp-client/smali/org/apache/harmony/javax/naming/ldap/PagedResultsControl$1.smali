.class Lorg/apache/harmony/javax/naming/ldap/PagedResultsControl$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PagedResultsControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/naming/ldap/PagedResultsControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .parameter "in"

    .prologue
    .line 50
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 51
    .local v2, values:[Ljava/lang/Object;
    new-instance v4, Ljava/math/BigInteger;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, [B

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 52
    .local v1, size:I
    const/4 v3, 0x1

    aget-object v0, v2, v3

    check-cast v0, [B

    .line 53
    .local v0, cookie:[B
    new-instance v3, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;

    invoke-direct {v3, v1, v0}, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;-><init>(I[B)V

    return-object v3
.end method

.method public getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 58
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;

    .line 59
    .local v0, pg:Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;->getSize()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 60
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;->getCookie()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 61
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aput-object v1, p2, v4

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;->getCookie()[B

    move-result-object v1

    aput-object v1, p2, v4

    goto :goto_0
.end method
