.class public final Lorg/apache/harmony/javax/naming/ldap/PagedResultsResponseControl;
.super Lorg/apache/harmony/javax/naming/ldap/BasicControl;
.source "PagedResultsResponseControl.java"


# static fields
.field public static final OID:Ljava/lang/String; = "1.2.840.113556.1.4.319"

.field private static final serialVersionUID:J = -0x7a66260a0bff756aL


# instance fields
.field private final cookie:[B

.field private final resultSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[B)V
    .locals 2
    .parameter "id"
    .parameter "criticality"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/ldap/BasicControl;-><init>(Ljava/lang/String;Z[B)V

    .line 40
    sget-object v1, Lorg/apache/harmony/javax/naming/ldap/PagedResultsControl;->ASN1_ENCODER:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 41
    invoke-virtual {v1, p3}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;

    .line 42
    .local v0, pgscv:Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;->getSize()I

    move-result v1

    iput v1, p0, Lorg/apache/harmony/javax/naming/ldap/PagedResultsResponseControl;->resultSize:I

    .line 43
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/internal/PagedResultSearchControlValue;->getCookie()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/PagedResultsResponseControl;->cookie:[B

    .line 44
    return-void
.end method


# virtual methods
.method public getCookie()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/PagedResultsResponseControl;->cookie:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/PagedResultsResponseControl;->cookie:[B

    goto :goto_0
.end method

.method public getResultSize()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/apache/harmony/javax/naming/ldap/PagedResultsResponseControl;->resultSize:I

    return v0
.end method
