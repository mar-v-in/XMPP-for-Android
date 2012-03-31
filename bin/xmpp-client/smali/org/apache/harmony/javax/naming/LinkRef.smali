.class public Lorg/apache/harmony/javax/naming/LinkRef;
.super Lorg/apache/harmony/javax/naming/Reference;
.source "LinkRef.java"


# static fields
.field private static final ADDR_TYPE:Ljava/lang/String; = "LinkAddress"

.field private static final serialVersionUID:J = -0x4abff2c6729fe862L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 70
    const-class v0, Lorg/apache/harmony/javax/naming/LinkRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/harmony/javax/naming/StringRefAddr;

    const-string v2, "LinkAddress"

    invoke-direct {v1, v2, p1}, Lorg/apache/harmony/javax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/javax/naming/Reference;-><init>(Ljava/lang/String;Lorg/apache/harmony/javax/naming/RefAddr;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/LinkRef;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getLinkName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 85
    const-class v2, Lorg/apache/harmony/javax/naming/LinkRef;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/LinkRef;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    new-instance v2, Lorg/apache/harmony/javax/naming/MalformedLinkException;

    const-string v3, "jndi.11"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/MalformedLinkException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_0
    :try_start_0
    const-string v2, "LinkAddress"

    invoke-virtual {p0, v2}, Lorg/apache/harmony/javax/naming/LinkRef;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/RefAddr;

    move-result-object v0

    .line 91
    .local v0, addr:Lorg/apache/harmony/javax/naming/RefAddr;
    if-nez v0, :cond_1

    .line 93
    new-instance v2, Lorg/apache/harmony/javax/naming/MalformedLinkException;

    .line 94
    const-string v3, "jndi.12"

    const-string v4, "LinkAddress"

    .line 93
    invoke-static {v3, v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/MalformedLinkException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0           #addr:Lorg/apache/harmony/javax/naming/RefAddr;
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/NullPointerException;
    new-instance v2, Lorg/apache/harmony/javax/naming/MalformedLinkException;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/MalformedLinkException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #addr:Lorg/apache/harmony/javax/naming/RefAddr;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method
