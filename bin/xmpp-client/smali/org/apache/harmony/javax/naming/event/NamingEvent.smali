.class public Lorg/apache/harmony/javax/naming/event/NamingEvent;
.super Ljava/util/EventObject;
.source "NamingEvent.java"


# static fields
.field public static final OBJECT_ADDED:I = 0x0

.field public static final OBJECT_CHANGED:I = 0x3

.field public static final OBJECT_REMOVED:I = 0x1

.field public static final OBJECT_RENAMED:I = 0x2

.field private static final serialVersionUID:J = -0x62e74ffd762dd0bbL


# instance fields
.field protected changeInfo:Ljava/lang/Object;

.field private transient eventContext:Lorg/apache/harmony/javax/naming/event/EventContext;

.field protected newBinding:Lorg/apache/harmony/javax/naming/Binding;

.field protected oldBinding:Lorg/apache/harmony/javax/naming/Binding;

.field protected type:I


# direct methods
.method public constructor <init>(Lorg/apache/harmony/javax/naming/event/EventContext;ILorg/apache/harmony/javax/naming/Binding;Lorg/apache/harmony/javax/naming/Binding;Ljava/lang/Object;)V
    .locals 0
    .parameter "eventContext"
    .parameter "type"
    .parameter "newBinding"
    .parameter "oldBinding"
    .parameter "changeInfo"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 148
    iput p2, p0, Lorg/apache/harmony/javax/naming/event/NamingEvent;->type:I

    .line 149
    iput-object p5, p0, Lorg/apache/harmony/javax/naming/event/NamingEvent;->changeInfo:Ljava/lang/Object;

    .line 150
    iput-object p3, p0, Lorg/apache/harmony/javax/naming/event/NamingEvent;->newBinding:Lorg/apache/harmony/javax/naming/Binding;

    .line 151
    iput-object p4, p0, Lorg/apache/harmony/javax/naming/event/NamingEvent;->oldBinding:Lorg/apache/harmony/javax/naming/Binding;

    .line 152
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/event/NamingEvent;->eventContext:Lorg/apache/harmony/javax/naming/event/EventContext;

    .line 154
    return-void
.end method


# virtual methods
.method public dispatch(Lorg/apache/harmony/javax/naming/event/NamingListener;)V
    .locals 1
    .parameter "naminglistener"

    .prologue
    .line 171
    iget v0, p0, Lorg/apache/harmony/javax/naming/event/NamingEvent;->type:I

    packed-switch v0, :pswitch_data_0

    .line 185
    .end local p1
    :goto_0
    return-void

    .line 173
    .restart local p1
    :pswitch_0
    check-cast p1, Lorg/apache/harmony/javax/naming/event/NamespaceChangeListener;

    .end local p1
    invoke-interface {p1, p0}, Lorg/apache/harmony/javax/naming/event/NamespaceChangeListener;->objectAdded(Lorg/apache/harmony/javax/naming/event/NamingEvent;)V

    goto :goto_0

    .line 176
    .restart local p1
    :pswitch_1
    check-cast p1, Lorg/apache/harmony/javax/naming/event/NamespaceChangeListener;

    .end local p1
    invoke-interface {p1, p0}, Lorg/apache/harmony/javax/naming/event/NamespaceChangeListener;->objectRemoved(Lorg/apache/harmony/javax/naming/event/NamingEvent;)V

    goto :goto_0

    .line 179
    .restart local p1
    :pswitch_2
    check-cast p1, Lorg/apache/harmony/javax/naming/event/NamespaceChangeListener;

    .end local p1
    invoke-interface {p1, p0}, Lorg/apache/harmony/javax/naming/event/NamespaceChangeListener;->objectRenamed(Lorg/apache/harmony/javax/naming/event/NamingEvent;)V

    goto :goto_0

    .line 182
    .restart local p1
    :pswitch_3
    check-cast p1, Lorg/apache/harmony/javax/naming/event/ObjectChangeListener;

    .end local p1
    invoke-interface {p1, p0}, Lorg/apache/harmony/javax/naming/event/ObjectChangeListener;->objectChanged(Lorg/apache/harmony/javax/naming/event/NamingEvent;)V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getChangeInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/event/NamingEvent;->changeInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getEventContext()Lorg/apache/harmony/javax/naming/event/EventContext;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/event/NamingEvent;->eventContext:Lorg/apache/harmony/javax/naming/event/EventContext;

    return-object v0
.end method

.method public getNewBinding()Lorg/apache/harmony/javax/naming/Binding;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/event/NamingEvent;->newBinding:Lorg/apache/harmony/javax/naming/Binding;

    return-object v0
.end method

.method public getOldBinding()Lorg/apache/harmony/javax/naming/Binding;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/event/NamingEvent;->oldBinding:Lorg/apache/harmony/javax/naming/Binding;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lorg/apache/harmony/javax/naming/event/NamingEvent;->type:I

    return v0
.end method
