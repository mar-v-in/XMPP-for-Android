.class public Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
.super Ljava/lang/Object;
.source "MacroGroup.java"


# instance fields
.field private macroGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;",
            ">;"
        }
    .end annotation
.end field

.field private macros:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macros:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macroGroups:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public addMacro(Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;)V
    .locals 1
    .parameter "macro"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macros:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public addMacroGroup(Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macroGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public getMacro(I)Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;
    .locals 1
    .parameter "location"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macros:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;

    return-object v0
.end method

.method public getMacroByTitle(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;
    .locals 4
    .parameter "title"

    .prologue
    .line 56
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macros:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, col:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 58
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 59
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;

    .line 60
    .local v2, macro:Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public getMacroGroup(I)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    .locals 1
    .parameter "location"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macroGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    return-object v0
.end method

.method public getMacroGroupByTitle(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    .locals 4
    .parameter "title"

    .prologue
    .line 73
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macroGroups:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, col:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 75
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 76
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    .line 77
    .local v1, group:Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public getMacroGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macroGroups:Ljava/util/List;

    return-object v0
.end method

.method public getMacros()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macros:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->title:Ljava/lang/String;

    return-object v0
.end method

.method public removeMacro(Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;)V
    .locals 1
    .parameter "macro"

    .prologue
    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macros:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public removeMacroGroup(Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macroGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public setMacroGroups(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, macroGroups:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;>;"
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macroGroups:Ljava/util/List;

    .line 106
    return-void
.end method

.method public setMacros(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, macros:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;>;"
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->macros:Ljava/util/List;

    .line 110
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 113
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->title:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 6

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "<macrogroup>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<title>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</title>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v3, "<macros>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->getMacros()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    const-string v3, "</macros>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->getMacroGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 133
    const-string v3, "<macroGroups>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->getMacroGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 137
    const-string v3, "</macroGroups>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    const-string v3, "</macrogroup>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 121
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;

    .line 122
    .local v2, macro:Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;
    const-string v4, "<macro>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<title>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</title>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<type>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</type>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<description>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 126
    const-string v5, "</description>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<response>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;->getResponse()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</response>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v4, "</macro>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 134
    .end local v2           #macro:Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    .line 135
    .local v1, groups:Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method
