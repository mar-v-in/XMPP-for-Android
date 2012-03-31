.class public Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;
.super Ljava/lang/Object;
.source "LdapUtils.java"


# static fields
.field private static errorCodesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    .line 62
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/NamingException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/CommunicationException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/TimeLimitExceededException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/SizeLimitExceededException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/AuthenticationNotSupportedException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/AuthenticationNotSupportedException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/PartialResultException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/LimitExceededException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/AuthenticationNotSupportedException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/directory/NoSuchAttributeException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/directory/InvalidAttributeIdentifierException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/directory/InvalidAttributeValueException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/directory/AttributeInUseException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/directory/InvalidAttributeValueException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/NameNotFoundException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/NamingException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/InvalidNameException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/NamingException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/AuthenticationNotSupportedException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/AuthenticationException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/NoPermissionException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/ServiceUnavailableException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/ServiceUnavailableException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/NamingException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/InvalidNameException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/ContextNotEmptyException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/NameAlreadyBoundException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/NamingException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/javax/naming/NamingException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 101
    const/4 v0, 0x0

    .line 104
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 105
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 104
    invoke-static {p0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 108
    invoke-static {p0, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static convertToRelativeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "dn"
    .parameter "base"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;,
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-direct {v0, p0}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-direct {v1, p1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->convertToRelativeName(Lorg/apache/harmony/javax/naming/ldap/LdapName;Lorg/apache/harmony/javax/naming/ldap/LdapName;)Lorg/apache/harmony/javax/naming/ldap/LdapName;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    return-object v0
.end method

.method public static convertToRelativeName(Lorg/apache/harmony/javax/naming/ldap/LdapName;Lorg/apache/harmony/javax/naming/ldap/LdapName;)Lorg/apache/harmony/javax/naming/ldap/LdapName;
    .locals 3
    .parameter "dn"
    .parameter "base"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 132
    .end local p0
    :goto_0
    return-object p0

    .line 121
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->size()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 123
    new-instance v1, Lorg/apache/harmony/javax/naming/NamingException;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_1
    invoke-virtual {p1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    .line 127
    .local v0, prefix:Lorg/apache/harmony/javax/naming/Name;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    new-instance v1, Lorg/apache/harmony/javax/naming/NamingException;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_2
    invoke-virtual {p1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    move-object p0, v1

    goto :goto_0
.end method

.method public static getExceptionFromResult(Lorg/apache/harmony/jndi/provider/ldap/LdapResult;)Lorg/apache/harmony/javax/naming/NamingException;
    .locals 11
    .parameter "result"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 155
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getResultCode()I

    move-result v2

    .line 157
    .local v2, errorCode:I
    if-nez v2, :cond_0

    .line 158
    const/4 v5, 0x0

    .line 187
    :goto_0
    return-object v5

    .line 161
    :cond_0
    sget-object v5, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->errorCodesMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 163
    .local v3, exceptionClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v3, :cond_1

    .line 164
    const-class v3, Lorg/apache/harmony/javax/naming/NamingException;

    .line 169
    :cond_1
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 170
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    .line 172
    .local v4, message:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 173
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 175
    const-string v5, "ldap.34"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 175
    invoke-static {v5, v6}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 184
    :goto_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/javax/naming/NamingException;

    goto :goto_0

    .line 179
    :cond_2
    const-string v5, "ldap.35"

    .line 180
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 179
    invoke-static {v5, v6}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 185
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v4           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 187
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Lorg/apache/harmony/javax/naming/NamingException;

    const-string v6, "ldap.35"

    .line 188
    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 187
    invoke-static {v6, v7}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSocketFactory(Ljava/util/Hashtable;Z)Ljavax/net/SocketFactory;
    .locals 6
    .parameter
    .parameter "isLdaps"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;Z)",
            "Ljavax/net/SocketFactory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/ConfigurationException;
        }
    .end annotation

    .prologue
    .line 208
    .line 209
    .local p0, envmt:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const-string v4, "java.naming.ldap.factory.socket"

    invoke-virtual {p0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 211
    .local v3, factoryName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 214
    .local v2, factory:Ljavax/net/SocketFactory;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    :try_start_0
    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 217
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #factory:Ljavax/net/SocketFactory;
    check-cast v2, Ljavax/net/SocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .restart local v2       #factory:Ljavax/net/SocketFactory;
    :cond_0
    if-nez v2, :cond_1

    .line 227
    if-eqz p1, :cond_2

    .line 228
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v2

    .line 239
    :cond_1
    :goto_0
    return-object v2

    .line 218
    .end local v2           #factory:Ljavax/net/SocketFactory;
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lorg/apache/harmony/javax/naming/ConfigurationException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/ConfigurationException;-><init>()V

    .line 220
    .local v1, ex:Lorg/apache/harmony/javax/naming/ConfigurationException;
    invoke-virtual {v1, v0}, Lorg/apache/harmony/javax/naming/ConfigurationException;->setRootCause(Ljava/lang/Throwable;)V

    .line 221
    throw v1

    .line 231
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ex:Lorg/apache/harmony/javax/naming/ConfigurationException;
    .restart local v2       #factory:Ljavax/net/SocketFactory;
    :cond_2
    const-string v5, "ssl"

    .line 232
    const-string v4, "java.naming.security.protocol"

    invoke-virtual {p0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 231
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 233
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v2

    goto :goto_0

    .line 235
    :cond_3
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v2

    goto :goto_0
.end method

.method public static isLdapsURL(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 243
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ldaps://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static parseFilter(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .locals 5
    .parameter "filter"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;
        }
    .end annotation

    .prologue
    .line 248
    if-nez p0, :cond_0

    .line 250
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ldap.28"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    :cond_0
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;

    invoke-direct {v2, p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;-><init>(Ljava/lang/String;)V

    .line 255
    .local v2, parser:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;
    if-nez p1, :cond_1

    .line 256
    const/4 v3, 0x0

    new-array p1, v3, [Ljava/lang/Object;

    .line 259
    :cond_1
    invoke-virtual {v2, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->setArgs([Ljava/lang/Object;)V

    .line 262
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;
    :try_end_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
    new-instance v1, Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;

    .line 266
    const-string v3, "ldap.29"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-direct {v1, v3}, Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, ex:Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;
    invoke-virtual {v1, v0}, Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;->setRootCause(Ljava/lang/Throwable;)V

    .line 268
    throw v1
.end method

.method public static parserURL(Ljava/lang/String;Z)Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    .locals 5
    .parameter "url"
    .parameter "isAllowedQuery"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 274
    if-nez p0, :cond_0

    .line 276
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ldap.2B"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 279
    :cond_0
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;

    invoke-direct {v2, p0}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;-><init>(Ljava/lang/String;)V

    .line 281
    .local v2, parser:Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->parseURL()V
    :try_end_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    if-nez p1, :cond_2

    .line 291
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getFilter()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParser;->getControls()Lorg/apache/harmony/javax/naming/directory/SearchControls;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 293
    :cond_1
    new-instance v3, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v4, "ldap.2D"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 285
    const-string v3, "ldap.2C"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 287
    throw v1

    .line 296
    .end local v0           #e:Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :cond_2
    return-object v2
.end method
