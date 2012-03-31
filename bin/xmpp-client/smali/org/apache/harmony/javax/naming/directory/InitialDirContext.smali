.class public Lorg/apache/harmony/javax/naming/directory/InitialDirContext;
.super Lorg/apache/harmony/javax/naming/InitialContext;
.source "InitialDirContext.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/directory/DirContext;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/InitialContext;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 84
    .local p1, hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;-><init>(Ljava/util/Hashtable;)V

    .line 85
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;-><init>(Z)V

    .line 69
    return-void
.end method

.method private castToDirContext(Lorg/apache/harmony/javax/naming/Context;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 2
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NoInitialContextException;,
            Lorg/apache/harmony/javax/naming/NotContextException;
        }
    .end annotation

    .prologue
    .line 104
    instance-of v0, p1, Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-eqz v0, :cond_0

    .line 105
    check-cast p1, Lorg/apache/harmony/javax/naming/directory/DirContext;

    .end local p1
    return-object p1

    .line 106
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    .line 108
    new-instance v0, Lorg/apache/harmony/javax/naming/NoInitialContextException;

    const-string v1, "jndi.1A"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/NoInitialContextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-instance v0, Lorg/apache/harmony/javax/naming/NotContextException;

    const-string v1, "jndi.1B"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/NotContextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-super {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->castToDirContext(Lorg/apache/harmony/javax/naming/Context;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method private getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-super {p0, p1}, Lorg/apache/harmony/javax/naming/InitialContext;->getURLOrDefaultInitCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->castToDirContext(Lorg/apache/harmony/javax/naming/Context;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "s"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->bind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 97
    return-void
.end method

.method public bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "name"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 91
    return-void
.end method

.method public createSubcontext(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "s"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->createSubcontext(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "s"
    .parameter "as"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "name"
    .parameter "as"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public getSchema(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchema(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaClassDefinition(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchemaClassDefinition(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaClassDefinition(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getSchemaClassDefinition(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public modifyAttributes(Ljava/lang/String;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "s"
    .parameter "i"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Ljava/lang/String;ILorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 198
    return-void
.end method

.method public modifyAttributes(Ljava/lang/String;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    .locals 1
    .parameter "s"
    .parameter "modificationItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Ljava/lang/String;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V

    .line 205
    return-void
.end method

.method public modifyAttributes(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "name"
    .parameter "i"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 185
    return-void
.end method

.method public modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    .locals 1
    .parameter "name"
    .parameter "modificationItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V

    .line 192
    return-void
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "s"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->rebind(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 217
    return-void
.end method

.method public rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "name"
    .parameter "obj"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 211
    return-void
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "objs"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .parameter "as"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "searchcontrols"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "objs"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .parameter "as"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;->getURLOrDefaultInitDirCtx(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/harmony/javax/naming/directory/DirContext;->search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method
