.class Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;
.super Ljava/lang/Object;
.source "DefaultCallbackHandler.java"

# interfaces
.implements Ljavax/security/auth/callback/CallbackHandler;


# static fields
.field private static final JAVA_NAMING_SECURITY_SASL_REALM:Ljava/lang/String; = "java.naming.security.sasl.realm"


# instance fields
.field private env:Ljava/util/Hashtable;

.field private realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;->realm:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1
    .parameter "env"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;->realm:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;->env:Ljava/util/Hashtable;

    .line 51
    return-void
.end method


# virtual methods
.method public handle([Ljavax/security/auth/callback/Callback;)V
    .locals 8
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/security/auth/callback/UnsupportedCallbackException;
        }
    .end annotation

    .prologue
    .line 56
    array-length v6, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_0

    .line 81
    return-void

    .line 56
    :cond_0
    aget-object v0, p1, v5

    .line 57
    .local v0, callback:Ljavax/security/auth/callback/Callback;
    instance-of v4, v0, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    if-nez v4, :cond_1

    .line 61
    instance-of v4, v0, Lorg/apache/harmony/javax/security/sasl/RealmCallback;

    if-eqz v4, :cond_3

    move-object v3, v0

    .line 62
    check-cast v3, Lorg/apache/harmony/javax/security/sasl/RealmCallback;

    .line 63
    .local v3, rc:Lorg/apache/harmony/javax/security/sasl/RealmCallback;
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;->env:Ljava/util/Hashtable;

    const-string v7, "java.naming.security.sasl.realm"

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 64
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;->env:Ljava/util/Hashtable;

    const-string v7, "java.naming.security.sasl.realm"

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;->realm:Ljava/lang/String;

    .line 65
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;->realm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/javax/security/sasl/RealmCallback;->setText(Ljava/lang/String;)V

    .line 56
    .end local v3           #rc:Lorg/apache/harmony/javax/security/sasl/RealmCallback;
    :cond_1
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 67
    .restart local v3       #rc:Lorg/apache/harmony/javax/security/sasl/RealmCallback;
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;->realm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/javax/security/sasl/RealmCallback;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    .end local v3           #rc:Lorg/apache/harmony/javax/security/sasl/RealmCallback;
    :cond_3
    instance-of v4, v0, Ljavax/security/auth/callback/PasswordCallback;

    if-eqz v4, :cond_4

    move-object v2, v0

    .line 70
    check-cast v2, Ljavax/security/auth/callback/PasswordCallback;

    .line 71
    .local v2, pc:Ljavax/security/auth/callback/PasswordCallback;
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;->env:Ljava/util/Hashtable;

    .line 72
    const-string v7, "java.naming.security.credentials"

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 71
    invoke-static {v4}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getCharArray(Ljava/lang/Object;)[C

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_1

    .line 73
    .end local v2           #pc:Ljavax/security/auth/callback/PasswordCallback;
    :cond_4
    instance-of v4, v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    if-eqz v4, :cond_5

    move-object v1, v0

    .line 75
    check-cast v1, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    .line 76
    .local v1, nc:Lorg/apache/harmony/javax/security/auth/callback/NameCallback;
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;->env:Ljava/util/Hashtable;

    const-string v7, "java.naming.security.principal"

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    .end local v1           #nc:Lorg/apache/harmony/javax/security/auth/callback/NameCallback;
    :cond_5
    new-instance v4, Ljavax/security/auth/callback/UnsupportedCallbackException;

    invoke-direct {v4, v0}, Ljavax/security/auth/callback/UnsupportedCallbackException;-><init>(Ljavax/security/auth/callback/Callback;)V

    throw v4
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 84
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/sasl/DefaultCallbackHandler;->realm:Ljava/lang/String;

    .line 85
    return-void
.end method
