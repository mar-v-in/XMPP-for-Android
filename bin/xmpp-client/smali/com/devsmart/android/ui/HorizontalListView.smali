.class public Lcom/devsmart/android/ui/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field public mAlwaysOverrideTouch:Z

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private final mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mAlwaysOverrideTouch:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I

    .line 50
    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRightViewIndex:I

    .line 53
    const v0, 0x7fffffff

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mMaxX:I

    .line 54
    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDisplayOffset:I

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 61
    iput-boolean v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDataChanged:Z

    .line 63
    new-instance v0, Lcom/devsmart/android/ui/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/devsmart/android/ui/HorizontalListView$1;-><init>(Lcom/devsmart/android/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 83
    new-instance v0, Lcom/devsmart/android/ui/HorizontalListView$2;

    invoke-direct {v0, p0}, Lcom/devsmart/android/ui/HorizontalListView$2;-><init>(Lcom/devsmart/android/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 164
    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontalListView;->initView()V

    .line 165
    return-void
.end method

.method static synthetic access$2(Lcom/devsmart/android/ui/HorizontalListView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDataChanged:Z

    return-void
.end method

.method static synthetic access$3(Lcom/devsmart/android/ui/HorizontalListView;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$4(Lcom/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/devsmart/android/ui/HorizontalListView;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic access$6(Lcom/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/devsmart/android/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 4
    .parameter "child"
    .parameter "viewPos"

    .prologue
    const/4 v1, -0x1

    const/high16 v3, -0x8000

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 169
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 170
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 174
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/devsmart/android/ui/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 176
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 177
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 175
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 178
    return-void
.end method

.method private fillList(I)V
    .locals 3
    .parameter "dx"

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, edge:I
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 190
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 193
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/devsmart/android/ui/HorizontalListView;->fillListRight(II)V

    .line 195
    const/4 v1, 0x0

    .line 196
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 200
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/devsmart/android/ui/HorizontalListView;->fillListLeft(II)V

    .line 202
    return-void
.end method

.method private fillListLeft(II)V
    .locals 4
    .parameter "leftEdge"
    .parameter "dx"

    .prologue
    .line 205
    :goto_0
    add-int v1, p1, p2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I

    if-gez v1, :cond_1

    .line 213
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I

    .line 207
    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 206
    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/devsmart/android/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 210
    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I

    .line 211
    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDisplayOffset:I

    goto :goto_0
.end method

.method private fillListRight(II)V
    .locals 4
    .parameter "rightEdge"
    .parameter "dx"

    .prologue
    .line 216
    :goto_0
    add-int v1, p1, p2

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 217
    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 234
    :cond_0
    return-void

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRightViewIndex:I

    .line 220
    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 219
    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, child:Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/devsmart/android/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 224
    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 225
    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mCurrentX:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mMaxX:I

    .line 228
    :cond_2
    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mMaxX:I

    if-gez v1, :cond_3

    .line 229
    const/4 v1, 0x0

    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mMaxX:I

    .line 231
    :cond_3
    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRightViewIndex:I

    goto :goto_0
.end method

.method private declared-synchronized initView()V
    .locals 3

    .prologue
    .line 248
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRightViewIndex:I

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDisplayOffset:I

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mCurrentX:I

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    .line 253
    const v0, 0x7fffffff

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mMaxX:I

    .line 254
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    .line 255
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 7
    .parameter "dx"

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 325
    iget v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDisplayOffset:I

    .line 326
    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDisplayOffset:I

    .line 327
    .local v3, left:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 335
    .end local v2           #i:I
    .end local v3           #left:I
    :cond_0
    return-void

    .line 328
    .restart local v2       #i:I
    .restart local v3       #left:I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 329
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 330
    .local v1, childWidth:I
    const/4 v4, 0x0

    add-int v5, v3, v1

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 330
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 332
    add-int/2addr v3, v1

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private removeNonVisibleItems(I)V
    .locals 4
    .parameter "dx"

    .prologue
    const/4 v3, 0x0

    .line 338
    invoke-virtual {p0, v3}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, child:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-lez v1, :cond_2

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 349
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 355
    :cond_1
    return-void

    .line 340
    :cond_2
    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDisplayOffset:I

    .line 341
    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {p0, v0}, Lcom/devsmart/android/ui/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 343
    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mLeftViewIndex:I

    .line 344
    invoke-virtual {p0, v3}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_3
    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {p0, v0}, Lcom/devsmart/android/ui/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 352
    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mRightViewIndex:I

    .line 353
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private declared-synchronized reset()V
    .locals 1

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontalListView;->initView()V

    .line 359
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->removeAllViewsInLayout()V

    .line 360
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 183
    .local v0, handled:Z
    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 184
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 259
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 260
    return v1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/devsmart/android/ui/HorizontalListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 265
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->requestLayout()V

    .line 270
    const/4 v0, 0x1

    return v0

    .line 265
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 278
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 321
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 282
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDataChanged:Z

    if-eqz v3, :cond_2

    .line 283
    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mCurrentX:I

    .line 284
    .local v1, oldCurrentX:I
    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontalListView;->initView()V

    .line 285
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->removeAllViewsInLayout()V

    .line 286
    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    .line 287
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDataChanged:Z

    .line 290
    .end local v1           #oldCurrentX:I
    :cond_2
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 292
    .local v2, scrollx:I
    iput v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    .line 295
    .end local v2           #scrollx:I
    :cond_3
    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    if-gtz v3, :cond_4

    .line 296
    const/4 v3, 0x0

    iput v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    .line 297
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 299
    :cond_4
    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    iget v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->mMaxX:I

    if-lt v3, v4, :cond_5

    .line 300
    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mMaxX:I

    iput v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    .line 301
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 304
    :cond_5
    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mCurrentX:I

    iget v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    sub-int v0, v3, v4

    .line 306
    .local v0, dx:I
    invoke-direct {p0, v0}, Lcom/devsmart/android/ui/HorizontalListView;->removeNonVisibleItems(I)V

    .line 307
    invoke-direct {p0, v0}, Lcom/devsmart/android/ui/HorizontalListView;->fillList(I)V

    .line 308
    invoke-direct {p0, v0}, Lcom/devsmart/android/ui/HorizontalListView;->positionItems(I)V

    .line 310
    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    iput v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mCurrentX:I

    .line 312
    iget-object v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 313
    new-instance v3, Lcom/devsmart/android/ui/HorizontalListView$3;

    invoke-direct {v3, p0}, Lcom/devsmart/android/ui/HorizontalListView$3;-><init>(Lcom/devsmart/android/ui/HorizontalListView;)V

    invoke-virtual {p0, v3}, Lcom/devsmart/android/ui/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    .end local v0           #dx:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 5
    .parameter "x"

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->mNextX:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 365
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/devsmart/android/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 373
    :cond_0
    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 374
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 375
    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontalListView;->reset()V

    .line 376
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    .local p1, listener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 381
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    .local p1, listener:Landroid/widget/AdapterView$OnItemLongClickListener;,"Landroid/widget/AdapterView$OnItemLongClickListener;"
    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 387
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    .local p1, listener:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 393
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 398
    return-void
.end method
