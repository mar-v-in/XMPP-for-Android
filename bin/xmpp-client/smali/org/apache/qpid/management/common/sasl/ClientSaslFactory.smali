.class public Lorg/apache/qpid/management/common/sasl/ClientSaslFactory;
.super Ljava/lang/Object;
.source "ClientSaslFactory.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;
    .locals 4
    .parameter "mechs"
    .parameter "authorizationId"
    .parameter "protocol"
    .parameter "serverName"
    .parameter "props"
    .parameter "cbh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 36
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 41
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 36
    :cond_0
    aget-object v0, p1, v1

    .line 37
    .local v0, mech:Ljava/lang/String;
    const-string v3, "PLAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    new-instance v1, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;

    invoke-direct {v1, p2, p6}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;-><init>(Ljava/lang/String;Ljavax/security/auth/callback/CallbackHandler;)V

    goto :goto_1

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getMechanismNames(Ljava/util/Map;)[Ljava/lang/String;
    .locals 3
    .parameter "props"

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PLAIN"

    aput-object v2, v0, v1

    return-object v0
.end method
