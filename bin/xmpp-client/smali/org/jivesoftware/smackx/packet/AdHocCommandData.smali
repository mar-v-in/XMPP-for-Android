.class public Lorg/jivesoftware/smackx/packet/AdHocCommandData;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "AdHocCommandData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/AdHocCommandData$SpecificError;
    }
.end annotation


# instance fields
.field private action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field private final actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;",
            ">;"
        }
    .end annotation
.end field

.field private executeAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field private form:Lorg/jivesoftware/smackx/packet/DataForm;

.field private id:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private node:Ljava/lang/String;

.field private final notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/commands/AdHocCommandNote;",
            ">;"
        }
    .end annotation
.end field

.field private sessionID:Ljava/lang/String;

.field private status:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->notes:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->actions:Ljava/util/ArrayList;

    .line 102
    return-void
.end method


# virtual methods
.method public addAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 105
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public addNote(Lorg/jivesoftware/smackx/commands/AdHocCommandNote;)V
    .locals 1
    .parameter "note"

    .prologue
    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->notes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public getAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->actions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 6

    .prologue
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string v3, "<command xmlns=\"http://jabber.org/protocol/commands\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v3, " node=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->node:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->sessionID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->sessionID:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    const-string v3, " sessionid=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->sessionID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->status:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    if-eqz v3, :cond_1

    .line 136
    const-string v3, " status=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->status:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_1
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    if-eqz v3, :cond_2

    .line 139
    const-string v3, " action=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_2
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->lang:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 143
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->lang:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 144
    const-string v3, " lang=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->lang:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_3
    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v3, v4, :cond_5

    .line 150
    const-string v3, "<actions"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->executeAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    if-eqz v3, :cond_4

    .line 153
    const-string v3, " execute=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->executeAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_4
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 156
    const-string v3, "/>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_5
    :goto_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->form:Lorg/jivesoftware/smackx/packet/DataForm;

    if-eqz v3, :cond_6

    .line 168
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->form:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DataForm;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_6
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->notes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 183
    const-string v3, "</command>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 158
    :cond_7
    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 163
    const-string v3, "</actions>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 160
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 161
    .local v0, action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 171
    .end local v0           #action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;

    .line 172
    .local v2, note:Lorg/jivesoftware/smackx/commands/AdHocCommandNote;
    const-string v4, "<note type=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;->getType()Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote$Type;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 173
    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/commands/AdHocCommandNote;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v4, "</note>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getExecuteAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->executeAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    return-object v0
.end method

.method public getForm()Lorg/jivesoftware/smackx/packet/DataForm;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->form:Lorg/jivesoftware/smackx/packet/DataForm;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/commands/AdHocCommandNote;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->notes:Ljava/util/List;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->status:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    return-object v0
.end method

.method public remveNote(Lorg/jivesoftware/smackx/commands/AdHocCommandNote;)V
    .locals 1
    .parameter "note"

    .prologue
    .line 250
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->notes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public setAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 254
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->action:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 255
    return-void
.end method

.method public setExecuteAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V
    .locals 0
    .parameter "executeAction"

    .prologue
    .line 258
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->executeAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 259
    return-void
.end method

.method public setForm(Lorg/jivesoftware/smackx/packet/DataForm;)V
    .locals 0
    .parameter "form"

    .prologue
    .line 262
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->form:Lorg/jivesoftware/smackx/packet/DataForm;

    .line 263
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 266
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->id:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 270
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->name:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 274
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->node:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionID"

    .prologue
    .line 278
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->sessionID:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 282
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->status:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    .line 283
    return-void
.end method
