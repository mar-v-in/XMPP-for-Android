.class Lorg/jivesoftware/smackx/muc/MultiUserChat$5;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 2313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 15
    .parameter "packet"

    .prologue
    .line 2316
    move-object/from16 v11, p1

    check-cast v11, Lorg/jivesoftware/smack/packet/Presence;

    .line 2317
    .local v11, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v11}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 2318
    .local v0, from:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    #getter for: Lorg/jivesoftware/smackx/muc/MultiUserChat;->room:Ljava/lang/String;
    invoke-static {v13}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$3(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    #getter for: Lorg/jivesoftware/smackx/muc/MultiUserChat;->nickname:Ljava/lang/String;
    invoke-static {v13}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$4(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2319
    .local v4, myRoomJID:Ljava/lang/String;
    invoke-virtual {v11}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v12

    .line 2320
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2321
    .local v1, isUserStatusModification:Z
    invoke-virtual {v11}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v12

    sget-object v13, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v12, v13, :cond_2

    .line 2322
    iget-object v12, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    #getter for: Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;
    invoke-static {v12}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$5(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jivesoftware/smack/packet/Presence;

    .line 2324
    .local v8, oldPresence:Lorg/jivesoftware/smack/packet/Presence;
    if-eqz v8, :cond_1

    .line 2326
    iget-object v12, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat;->getMUCUserExtension(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/packet/MUCUser;
    invoke-static {v12, v8}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$6(Lorg/jivesoftware/smackx/muc/MultiUserChat;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/packet/MUCUser;

    move-result-object v2

    .line 2327
    .local v2, mucExtension:Lorg/jivesoftware/smackx/packet/MUCUser;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v12

    .line 2328
    invoke-virtual {v12}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getAffiliation()Ljava/lang/String;

    move-result-object v7

    .line 2329
    .local v7, oldAffiliation:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v12

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getRole()Ljava/lang/String;

    move-result-object v9

    .line 2331
    .local v9, oldRole:Ljava/lang/String;
    iget-object v12, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat;->getMUCUserExtension(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/packet/MUCUser;
    invoke-static {v12, v11}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$6(Lorg/jivesoftware/smackx/muc/MultiUserChat;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/packet/MUCUser;

    move-result-object v2

    .line 2332
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v12

    .line 2333
    invoke-virtual {v12}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getAffiliation()Ljava/lang/String;

    move-result-object v5

    .line 2334
    .local v5, newAffiliation:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/packet/MUCUser$Item;

    move-result-object v12

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/packet/MUCUser$Item;->getRole()Ljava/lang/String;

    move-result-object v6

    .line 2336
    .local v6, newRole:Ljava/lang/String;
    iget-object v12, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat;->checkRoleModifications(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    invoke-static {v12, v9, v6, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$7(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2339
    iget-object v12, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat;->checkAffiliationModifications(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    invoke-static {v12, v7, v5, v1, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$8(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2366
    .end local v2           #mucExtension:Lorg/jivesoftware/smackx/packet/MUCUser;
    .end local v5           #newAffiliation:Ljava/lang/String;
    .end local v6           #newRole:Ljava/lang/String;
    .end local v7           #oldAffiliation:Ljava/lang/String;
    .end local v8           #oldPresence:Lorg/jivesoftware/smack/packet/Presence;
    .end local v9           #oldRole:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2343
    .restart local v8       #oldPresence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_1
    if-nez v1, :cond_0

    .line 2344
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2345
    .local v10, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2346
    iget-object v12, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    const-string v13, "joined"

    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v12, v13, v10}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$9(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 2349
    .end local v8           #oldPresence:Lorg/jivesoftware/smack/packet/Presence;
    .end local v10           #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v11}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v12

    sget-object v13, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v12, v13, :cond_0

    .line 2350
    iget-object v12, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    #getter for: Lorg/jivesoftware/smackx/muc/MultiUserChat;->occupantsMap:Ljava/util/Map;
    invoke-static {v12}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$5(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    iget-object v12, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat;->getMUCUserExtension(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/packet/MUCUser;
    invoke-static {v12, v11}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$6(Lorg/jivesoftware/smackx/muc/MultiUserChat;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/packet/MUCUser;

    move-result-object v3

    .line 2352
    .local v3, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 2354
    iget-object v12, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/MUCUser;->getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    move-result-object v13

    invoke-virtual {v13}, Lorg/jivesoftware/smackx/packet/MUCUser$Status;->getCode()Ljava/lang/String;

    move-result-object v13

    .line 2355
    invoke-virtual {v11}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 2354
    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat;->checkPresenceCode(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/MUCUser;Ljava/lang/String;)V
    invoke-static {v12, v13, v14, v3, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$10(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/MUCUser;Ljava/lang/String;)V

    goto :goto_0

    .line 2359
    :cond_3
    if-nez v1, :cond_0

    .line 2360
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2361
    .restart local v10       #params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2362
    iget-object v12, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$5;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    const-string v13, "left"

    #calls: Lorg/jivesoftware/smackx/muc/MultiUserChat;->fireParticipantStatusListeners(Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v12, v13, v10}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$9(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
