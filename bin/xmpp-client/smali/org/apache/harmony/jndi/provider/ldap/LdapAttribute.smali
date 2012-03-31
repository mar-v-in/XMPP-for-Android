.class public Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;
.super Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
.source "LdapAttribute.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;


# static fields
.field private static BINARY_ATTRIBUTE:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x5a1b3a3091bcdb01L


# instance fields
.field private context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    .line 51
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "photo"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "personalSignature"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "audio"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "jpegPhoto"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "javaSerializedData"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "thumbnailPhoto"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "thumbnailLogo"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "userPassword"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "userCertificate"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "cACertificate"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "authorityRevocationList"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "certificateRevocationList"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "crossCertificatePair"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    const-string v1, "x500UniqueIdentifier"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Z)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V
    .locals 1
    .parameter "id"
    .parameter "ctx"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Z)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 111
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V
    .locals 4
    .parameter "attr"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->isOrdered()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Z)V

    .line 47
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 101
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    .line 102
    .local v0, enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :goto_0
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 107
    return-void

    .line 103
    :cond_0
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, value:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isBinary(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .parameter "name"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    sget-object v3, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->BINARY_ATTRIBUTE:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    const-string v3, ";binary"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    if-eqz p1, :cond_2

    .line 74
    array-length v4, p1

    move v3, v2

    :goto_1
    if-lt v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 80
    goto :goto_0

    .line 74
    :cond_3
    aget-object v0, p1, v3

    .line 75
    .local v0, attr:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public convertValueToString()V
    .locals 4

    .prologue
    .line 116
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    .line 121
    .local v0, newValues:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 126
    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->values:Ljava/util/Vector;

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 122
    .local v1, value:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public decodeValues([Ljava/lang/Object;)V
    .locals 5
    .parameter "vs"

    .prologue
    .line 132
    const/4 v3, 0x0

    aget-object v2, p1, v3

    check-cast v2, [B

    .line 133
    .local v2, type:[B
    invoke-static {v2}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->attrID:Ljava/lang/String;

    .line 134
    const/4 v3, 0x1

    aget-object v1, p1, v3

    check-cast v1, Ljava/util/Collection;

    .line 135
    .local v1, list:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    return-void

    .line 135
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 136
    .local v0, bs:[B
    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public encodeValues([Ljava/lang/Object;)V
    .locals 5
    .parameter "vs"

    .prologue
    .line 142
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->attrID:Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v4

    aput-object v4, p1, v3

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->values:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    const/4 v3, 0x1

    aput-object v0, p1, v3

    .line 155
    return-void

    .line 146
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 147
    .local v1, object:Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v2, v1

    .line 148
    check-cast v2, Ljava/lang/String;

    .line 149
    .local v2, str:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v1

    .line 152
    .end local v1           #object:Ljava/lang/Object;
    .end local v2           #str:Ljava/lang/String;
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAttributeDefinition()Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    .line 162
    .local v0, schema:Lorg/apache/harmony/javax/naming/directory/DirContext;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AttributeDefinition/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 161
    check-cast v1, Lorg/apache/harmony/javax/naming/directory/DirContext;

    return-object v1
.end method

.method public getAttributeSyntaxDefinition()Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v1

    .line 170
    .local v1, schema:Lorg/apache/harmony/javax/naming/directory/DirContext;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AttributeDefinition/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 170
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/harmony/javax/naming/directory/DirContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    check-cast v0, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 173
    .local v0, attrDef:Lorg/apache/harmony/javax/naming/directory/DirContext;
    const-string v4, ""

    invoke-interface {v0, v4}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v4

    const-string v5, "syntax"

    invoke-interface {v4, v5}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v2

    .line 175
    .local v2, syntaxAttr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 177
    :cond_0
    new-instance v4, Lorg/apache/harmony/javax/naming/NameNotFoundException;

    const-string v5, "jndi.90"

    .line 178
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->getID()Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-static {v5, v6}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/harmony/javax/naming/NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 181
    :cond_1
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 185
    .local v3, syntaxName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SyntaxDefinition/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 185
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/harmony/javax/naming/directory/DirContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 184
    check-cast v4, Lorg/apache/harmony/javax/naming/directory/DirContext;

    return-object v4
.end method

.method setContext(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 191
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 192
    return-void
.end method
