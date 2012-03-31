.class public Lorg/jivesoftware/smackx/search/UserSearch;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "UserSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/search/UserSearch$Provider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 147
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/search/SimpleUserSearch;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p0, p1, p2}, Lorg/jivesoftware/smackx/search/UserSearch;->buildDataForm(Lorg/jivesoftware/smackx/search/SimpleUserSearch;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private static buildDataForm(Lorg/jivesoftware/smackx/search/SimpleUserSearch;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "search"
    .parameter "instructions"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 102
    new-instance v0, Lorg/jivesoftware/smackx/packet/DataForm;

    const-string v5, "form"

    invoke-direct {v0, v5}, Lorg/jivesoftware/smackx/packet/DataForm;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, dataForm:Lorg/jivesoftware/smackx/packet/DataForm;
    const/4 v1, 0x0

    .line 104
    .local v1, done:Z
    const-string v5, "User Search"

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smackx/packet/DataForm;->setTitle(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/DataForm;->addInstruction(Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 138
    const-string v5, "x"

    const-string v6, "jabber:x:data"

    invoke-virtual {p0, v5, v6}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v5

    if-nez v5, :cond_1

    .line 139
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 141
    :cond_1
    return-void

    .line 107
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 109
    .local v2, eventType:I
    if-ne v2, v7, :cond_7

    .line 110
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jabber:x:data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 111
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, name:Ljava/lang/String;
    new-instance v3, Lorg/jivesoftware/smackx/FormField;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/FormField;-><init>(Ljava/lang/String;)V

    .line 115
    .local v3, field:Lorg/jivesoftware/smackx/FormField;
    const-string v5, "first"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 116
    const-string v5, "First Name"

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smackx/FormField;->setLabel(Ljava/lang/String;)V

    .line 125
    :cond_3
    :goto_1
    const-string v5, "text-single"

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smackx/FormField;->setType(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/DataForm;->addField(Lorg/jivesoftware/smackx/FormField;)V

    goto :goto_0

    .line 117
    :cond_4
    const-string v5, "last"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 118
    const-string v5, "Last Name"

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smackx/FormField;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_5
    const-string v5, "email"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 120
    const-string v5, "Email Address"

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smackx/FormField;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_6
    const-string v5, "nick"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    const-string v5, "Nickname"

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smackx/FormField;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    .end local v3           #field:Lorg/jivesoftware/smackx/FormField;
    .end local v4           #name:Ljava/lang/String;
    :cond_7
    const/4 v5, 0x3

    if-ne v2, v5, :cond_8

    .line 128
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "query"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    const/4 v1, 0x1

    goto :goto_0

    .line 131
    :cond_8
    if-ne v2, v7, :cond_0

    .line 132
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jabber:x:data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-static {v5, v6, p2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 135
    const/4 v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<query xmlns=\"jabber:iq:search\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/search/UserSearch;->getExtensionsXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "</query>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSearchForm(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Lorg/jivesoftware/smackx/Form;
    .locals 5
    .parameter "con"
    .parameter "searchService"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v2, Lorg/jivesoftware/smackx/search/UserSearch;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/search/UserSearch;-><init>()V

    .line 172
    .local v2, search:Lorg/jivesoftware/smackx/search/UserSearch;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/search/UserSearch;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 173
    invoke-virtual {v2, p2}, Lorg/jivesoftware/smackx/search/UserSearch;->setTo(Ljava/lang/String;)V

    .line 176
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/search/UserSearch;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 177
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 180
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    .line 179
    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 183
    .local v1, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 184
    if-nez v1, :cond_0

    .line 185
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 188
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 190
    :cond_1
    invoke-static {v1}, Lorg/jivesoftware/smackx/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/Form;

    move-result-object v3

    return-object v3
.end method

.method public sendSearchForm(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)Lorg/jivesoftware/smackx/ReportedData;
    .locals 5
    .parameter "con"
    .parameter "searchForm"
    .parameter "searchService"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v2, Lorg/jivesoftware/smackx/search/UserSearch;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/search/UserSearch;-><init>()V

    .line 210
    .local v2, search:Lorg/jivesoftware/smackx/search/UserSearch;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/search/UserSearch;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 211
    invoke-virtual {v2, p3}, Lorg/jivesoftware/smackx/search/UserSearch;->setTo(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/search/UserSearch;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 215
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/search/UserSearch;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 217
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 220
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    .line 219
    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 223
    .local v1, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 224
    if-nez v1, :cond_0

    .line 225
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 228
    invoke-virtual {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/search/UserSearch;->sendSimpleSearchForm(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)Lorg/jivesoftware/smackx/ReportedData;

    move-result-object v3

    .line 231
    :goto_0
    return-object v3

    :cond_1
    invoke-static {v1}, Lorg/jivesoftware/smackx/ReportedData;->getReportedDataFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/ReportedData;

    move-result-object v3

    goto :goto_0
.end method

.method public sendSimpleSearchForm(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)Lorg/jivesoftware/smackx/ReportedData;
    .locals 5
    .parameter "con"
    .parameter "searchForm"
    .parameter "searchService"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 250
    new-instance v2, Lorg/jivesoftware/smackx/search/SimpleUserSearch;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;-><init>()V

    .line 251
    .local v2, search:Lorg/jivesoftware/smackx/search/SimpleUserSearch;
    invoke-virtual {v2, p2}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->setForm(Lorg/jivesoftware/smackx/Form;)V

    .line 252
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 253
    invoke-virtual {v2, p3}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->setTo(Ljava/lang/String;)V

    .line 256
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 258
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 261
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v3, v3

    .line 260
    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 264
    .local v1, response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 265
    if-nez v1, :cond_0

    .line 266
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from server on status set."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 269
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 272
    :cond_1
    instance-of v3, v1, Lorg/jivesoftware/smackx/search/SimpleUserSearch;

    if-eqz v3, :cond_2

    .line 273
    check-cast v1, Lorg/jivesoftware/smackx/search/SimpleUserSearch;

    .end local v1           #response:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->getReportedData()Lorg/jivesoftware/smackx/ReportedData;

    move-result-object v3

    .line 275
    :goto_0
    return-object v3

    .restart local v1       #response:Lorg/jivesoftware/smack/packet/IQ;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
