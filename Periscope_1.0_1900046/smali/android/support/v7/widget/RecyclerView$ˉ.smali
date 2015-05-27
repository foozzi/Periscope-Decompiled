.class public Landroid/support/v7/widget/RecyclerView$ˉ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02c9"
.end annotation


# instance fields
.field private bd:I

.field bn:Lo/ᒢ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14a2<Landroid/support/v7/widget/RecyclerView$\u02d1;Landroid/support/v7/widget/RecyclerView$\u141d;>;"
        }
    .end annotation
.end field

.field bo:Lo/ᒢ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14a2<Landroid/support/v7/widget/RecyclerView$\u02d1;Landroid/support/v7/widget/RecyclerView$\u141d;>;"
        }
    .end annotation
.end field

.field bp:Lo/ᒢ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14a2<Ljava/lang/Long;Landroid/support/v7/widget/RecyclerView$\u02d1;>;"
        }
    .end annotation
.end field

.field private bq:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<Ljava/lang/Object;>;"
        }
    .end annotation
.end field

.field private br:I

.field private bs:I

.field private bt:Z

.field private bu:Z

.field private bv:Z

.field private bw:Z

.field ʎ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7997
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bd:I

    .line 7998
    new-instance v0, Lo/ᒢ;

    invoke-direct {v0}, Lo/ᒢ;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    .line 8000
    new-instance v0, Lo/ᒢ;

    invoke-direct {v0}, Lo/ᒢ;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    .line 8003
    new-instance v0, Lo/ᒢ;

    invoke-direct {v0}, Lo/ᒢ;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    .line 8010
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->ʎ:I

    .line 8015
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->br:I

    .line 8021
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bs:I

    .line 8023
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bt:Z

    .line 8025
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bu:Z

    .line 8027
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bv:Z

    .line 8029
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bw:Z

    return-void
.end method

.method static synthetic ˉ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z
    .locals 1

    .line 7995
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bw:Z

    return v0
.end method

.method public static synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;I)I
    .locals 1

    .line 7995
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bs:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bs:I

    return v0
.end method

.method private ˊ(Lo/ᒢ;Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14a2<Ljava/lang/Long;Landroid/support/v7/widget/RecyclerView$\u02d1;>;Landroid/support/v7/widget/RecyclerView$\u02d1;)V"
        }
    .end annotation

    .line 8181
    invoke-virtual {p1}, Lo/ᒢ;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 8182
    invoke-virtual {p1, v2}, Lo/ᒢ;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 8183
    invoke-virtual {p1, v2}, Lo/ᒢ;->removeAt(I)Ljava/lang/Object;

    .line 8184
    return-void

    .line 8181
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 8187
    :cond_1
    return-void
.end method

.method static synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z
    .locals 0

    .line 7995
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bt:Z

    return p1
.end method

.method static synthetic ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;I)I
    .locals 0

    .line 7995
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bs:I

    return p1
.end method

.method static synthetic ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z
    .locals 0

    .line 7995
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bu:Z

    return p1
.end method

.method static synthetic ˌ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z
    .locals 1

    .line 7995
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bv:Z

    return v0
.end method

.method static synthetic ˍ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z
    .locals 1

    .line 7995
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bt:Z

    return v0
.end method

.method static synthetic ˎ(Landroid/support/v7/widget/RecyclerView$ˉ;I)I
    .locals 0

    .line 7995
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->br:I

    return p1
.end method

.method static synthetic ˎ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z
    .locals 0

    .line 7995
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bv:Z

    return p1
.end method

.method static synthetic ˏ(Landroid/support/v7/widget/RecyclerView$ˉ;I)I
    .locals 0

    .line 7995
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bd:I

    return p1
.end method

.method static synthetic ˏ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z
    .locals 0

    .line 7995
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bw:Z

    return p1
.end method

.method static synthetic ˑ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z
    .locals 1

    .line 7995
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bu:Z

    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 8162
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bu:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->br:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bs:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->ʎ:I

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 8191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bq:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->ʎ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->br:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ͺ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 1

    .line 8168
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0, p1}, Lo/ᒢ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8169
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    invoke-virtual {v0, p1}, Lo/ᒢ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8170
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    if-eqz v0, :cond_0

    .line 8171
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˊ(Lo/ᒢ;Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 8174
    :cond_0
    return-void
.end method

.method public ڏ()Z
    .locals 1

    .line 8042
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bu:Z

    return v0
.end method

.method public ઽ()Z
    .locals 1

    .line 8053
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bw:Z

    return v0
.end method

.method public ເ()I
    .locals 1

    .line 8117
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bd:I

    return v0
.end method

.method public ᓰ()Z
    .locals 2

    .line 8126
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˉ;->bd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
