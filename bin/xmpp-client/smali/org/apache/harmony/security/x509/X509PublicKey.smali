.class public Lorg/apache/harmony/security/x509/X509PublicKey;
.super Ljava/lang/Object;
.source "X509PublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final encoded:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B)V
    .locals 0
    .parameter "algorithm"
    .parameter "encoded"
    .parameter "keyBytes"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->algorithm:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->encoded:[B

    .line 31
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->encoded:[B

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "X.509"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "algorithm = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", params unparsed, unparsed keybits = \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
