.class Lcom/devsmart/android/ui/HorizontalListView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devsmart/android/ui/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devsmart/android/ui/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/devsmart/android/ui/HorizontalListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    .line 83
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 8
    .parameter "e"
    .parameter "child"

    .prologue
    .line 86
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 87
    .local v5, viewRect:Landroid/graphics/Rect;
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 88
    .local v1, childPosition:[I
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 89
    const/4 v6, 0x0

    aget v2, v1, v6

    .line 90
    .local v2, left:I
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int v3, v2, v6

    .line 91
    .local v3, right:I
    const/4 v6, 0x1

    aget v4, v1, v6

    .line 92
    .local v4, top:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v0, v4, v6

    .line 93
    .local v0, bottom:I
    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    return v6
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/devsmart/android/ui/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    .line 106
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/devsmart/android/ui/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 105
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "e"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v6

    .line 112
    .local v6, childCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-lt v7, v6, :cond_1

    .line 125
    :cond_0
    :goto_1
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0, v7}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 114
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, p1, v2}, Lcom/devsmart/android/ui/HorizontalListView$2;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    #getter for: Lcom/devsmart/android/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/devsmart/android/ui/HorizontalListView;->access$4(Lcom/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    #getter for: Lcom/devsmart/android/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/devsmart/android/ui/HorizontalListView;->access$4(Lcom/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    #getter for: Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/devsmart/android/ui/HorizontalListView;->access$5(Lcom/devsmart/android/ui/HorizontalListView;)I

    move-result v3

    .line 118
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v7

    .line 119
    iget-object v4, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v4, v4, Lcom/devsmart/android/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    #getter for: Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/devsmart/android/ui/HorizontalListView;->access$5(Lcom/devsmart/android/ui/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 116
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    goto :goto_1

    .line 112
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    iget v2, v0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->requestLayout()V

    .line 136
    const/4 v0, 0x1

    return v0

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    .line 141
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v0

    if-lt v6, v0, :cond_1

    .line 158
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0, v6}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, p1, v2}, Lcom/devsmart/android/ui/HorizontalListView$2;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    #getter for: Lcom/devsmart/android/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/devsmart/android/ui/HorizontalListView;->access$6(Lcom/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    #getter for: Lcom/devsmart/android/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/devsmart/android/ui/HorizontalListView;->access$6(Lcom/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    .line 146
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    #getter for: Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/devsmart/android/ui/HorizontalListView;->access$5(Lcom/devsmart/android/ui/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    .line 147
    iget-object v4, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v4, v4, Lcom/devsmart/android/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    #getter for: Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/devsmart/android/ui/HorizontalListView;->access$5(Lcom/devsmart/android/ui/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 145
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    #getter for: Lcom/devsmart/android/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/devsmart/android/ui/HorizontalListView;->access$7(Lcom/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    #getter for: Lcom/devsmart/android/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/devsmart/android/ui/HorizontalListView;->access$7(Lcom/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    .line 151
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    #getter for: Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/devsmart/android/ui/HorizontalListView;->access$5(Lcom/devsmart/android/ui/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    .line 152
    iget-object v4, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v4, v4, Lcom/devsmart/android/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/devsmart/android/ui/HorizontalListView$2;->this$0:Lcom/devsmart/android/ui/HorizontalListView;

    #getter for: Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/devsmart/android/ui/HorizontalListView;->access$5(Lcom/devsmart/android/ui/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 150
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1

    .line 141
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
