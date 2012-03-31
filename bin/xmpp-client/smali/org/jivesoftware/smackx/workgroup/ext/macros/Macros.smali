.class public Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Macros.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros$InternalProvider;
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "macros"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jivesoftware.com/protocol/workgroup"


# instance fields
.field private personal:Z

.field private personalMacroGroup:Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

.field private rootGroup:Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "macros"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    const-string v2, "http://jivesoftware.com/protocol/workgroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->isPersonal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "<personal>true</personal>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->getPersonalMacroGroup()Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 165
    const-string v1, "<personalMacro>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->getPersonalMacroGroup()Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, "</personalMacro>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_1
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "macros"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPersonalMacroGroup()Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->personalMacroGroup:Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    return-object v0
.end method

.method public getRootGroup()Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->rootGroup:Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    return-object v0
.end method

.method public isPersonal()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->personal:Z

    return v0
.end method

.method public setPersonal(Z)V
    .locals 0
    .parameter "personal"

    .prologue
    .line 188
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->personal:Z

    .line 189
    return-void
.end method

.method public setPersonalMacroGroup(Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;)V
    .locals 0
    .parameter "personalMacroGroup"

    .prologue
    .line 192
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->personalMacroGroup:Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    .line 193
    return-void
.end method

.method public setRootGroup(Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;)V
    .locals 0
    .parameter "rootGroup"

    .prologue
    .line 196
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->rootGroup:Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    .line 197
    return-void
.end method
