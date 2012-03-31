.class public Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "ChatNotes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes$Provider;
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "chat-notes"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jivesoftware.com/protocol/workgroup"


# instance fields
.field private notes:Ljava/lang/String;

.field private sessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method

.method public static final replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "string"
    .parameter "oldString"
    .parameter "newString"

    .prologue
    .line 91
    if-nez p0, :cond_1

    .line 92
    const/4 p0, 0x0

    .line 121
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 97
    .restart local p0
    :cond_1
    if-eqz p2, :cond_0

    .line 100
    const/4 v1, 0x0

    .line 103
    .local v1, i:I
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 106
    .local v5, string2:[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 107
    .local v3, newString2:[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 108
    .local v4, oLength:I
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v6, v5

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 110
    add-int/2addr v1, v4

    .line 111
    move v2, v1

    .line 113
    .local v2, j:I
    :goto_1
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    .line 118
    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-virtual {v0, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 114
    :cond_2
    sub-int v6, v1, v2

    invoke-virtual {v0, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 115
    add-int/2addr v1, v4

    .line 116
    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chat-notes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    const-string v2, "http://jivesoftware.com/protocol/workgroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "<sessionID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</sessionID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->getNotes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "<notes>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</notes>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chat-notes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 0
    .parameter "notes"

    .prologue
    .line 153
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->notes:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionID"

    .prologue
    .line 157
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->sessionID:Ljava/lang/String;

    .line 158
    return-void
.end method
