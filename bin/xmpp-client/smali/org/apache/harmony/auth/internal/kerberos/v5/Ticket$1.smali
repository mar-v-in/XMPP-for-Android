.class Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "Ticket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;
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
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 67
    .local v1, values:[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    .line 68
    const/4 v3, 0x2

    aget-object v3, v1, v3

    check-cast v3, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    .line 67
    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;-><init>(Ljava/lang/String;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;)V

    .line 69
    .local v0, ticket:Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    #setter for: Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;->encoded:[B
    invoke-static {v0, v2}, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;->access$1(Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;[B)V

    .line 71
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .parameter "object"
    .parameter "values"

    .prologue
    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
