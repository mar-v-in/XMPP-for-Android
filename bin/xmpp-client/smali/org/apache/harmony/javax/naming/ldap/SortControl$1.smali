.class Lorg/apache/harmony/javax/naming/ldap/SortControl$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SortControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/naming/ldap/SortControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2
    .parameter "$anonymous0"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/javax/naming/ldap/SortControl$1;->setOptional(I)V

    .line 53
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/javax/naming/ldap/SortControl$1;->setDefault(Ljava/lang/Object;I)V

    .line 1
    return-void
.end method


# virtual methods
.method public getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 7
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    move-object v1, p1

    check-cast v1, Lorg/apache/harmony/javax/naming/ldap/SortKey;

    .line 69
    .local v1, sk:Lorg/apache/harmony/javax/naming/ldap/SortKey;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/ldap/SortKey;->getAttributeID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, p2, v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/ldap/SortKey;->getMatchingRuleID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    .line 75
    const/4 v4, 0x2

    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/ldap/SortKey;->isAscending()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p2, v4

    .line 76
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/ldap/SortKey;->getAttributeID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, p2, v2

    goto :goto_0

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    move v2, v3

    .line 75
    goto :goto_1
.end method
