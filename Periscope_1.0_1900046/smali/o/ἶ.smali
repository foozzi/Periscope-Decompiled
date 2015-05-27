.class public final Lo/ἶ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᒬ;


# instance fields
.field public final tC:I

.field public final tD:Lo/ব;

.field public final tN:J

.field private uK:Lo/ʎ;

.field private final ub:Lo/ᒎ;

.field private final ue:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<Lo/\u148c;>;"
        }
    .end annotation
.end field

.field private volatile uh:Z

.field private uj:Z

.field private final yh:Z

.field private yi:Z


# direct methods
.method public constructor <init>(ILo/ব;JLo/ᒎ;Z)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lo/ἶ;->tC:I

    .line 59
    iput-object p2, p0, Lo/ἶ;->tD:Lo/ব;

    .line 60
    iput-wide p3, p0, Lo/ἶ;->tN:J

    .line 61
    iput-object p5, p0, Lo/ἶ;->ub:Lo/ᒎ;

    .line 62
    iput-boolean p6, p0, Lo/ἶ;->yh:Z

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 151
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒌ;

    invoke-virtual {v0}, Lo/ᒌ;->clear()V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method public getTrackCount()I
    .locals 1

    .line 115
    iget-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public ʻ(IJ)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lo/ἶ;->Ⅴ()Z

    move-result v0

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 190
    iget-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒌ;

    invoke-virtual {v0, p2, p3}, Lo/ᒌ;->ٴ(J)V

    .line 191
    return-void
.end method

.method public ˊ(Lo/ʎ;)V
    .locals 1

    .line 72
    iput-object p1, p0, Lo/ἶ;->uK:Lo/ʎ;

    .line 73
    iget-object v0, p0, Lo/ἶ;->ub:Lo/ᒎ;

    invoke-interface {v0, p0}, Lo/ᒎ;->ˊ(Lo/ᒬ;)V

    .line 74
    return-void
.end method

.method public ˊ(Lo/ᒲ;)V
    .locals 0

    .line 236
    return-void
.end method

.method public final ˊ(Lo/ἶ;)V
    .locals 6

    .line 91
    iget-boolean v0, p0, Lo/ἶ;->yi:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lo/ἶ;->yh:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/ἶ;->Ⅴ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    return-void

    .line 96
    :cond_1
    const/4 v1, 0x1

    .line 97
    invoke-virtual {p0}, Lo/ἶ;->getTrackCount()I

    move-result v2

    .line 98
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 99
    iget-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒌ;

    move-object v4, v0

    .line 100
    iget-object v0, p1, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒌ;

    move-object v5, v0

    .line 101
    invoke-virtual {v4, v5}, Lo/ᒌ;->ˊ(Lo/ᒌ;)Z

    move-result v0

    and-int/2addr v1, v0

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_2
    iput-boolean v1, p0, Lo/ἶ;->yi:Z

    .line 104
    return-void
.end method

.method public ˊ(ILo/ڋ;)Z
    .locals 1

    .line 178
    invoke-virtual {p0}, Lo/ἶ;->Ⅴ()Z

    move-result v0

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 179
    iget-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒌ;

    invoke-virtual {v0, p2}, Lo/ᒌ;->ˊ(Lo/ڋ;)Z

    move-result v0

    return v0
.end method

.method public ˋ(Lo/ᒑ;)I
    .locals 3

    .line 214
    iget-object v0, p0, Lo/ἶ;->ub:Lo/ᒎ;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lo/ᒎ;->ˊ(Lo/ᒑ;Lo/ᒮ;)I

    move-result v2

    .line 215
    const/4 v0, 0x1

    if-eq v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 216
    return v2
.end method

.method public ר(I)Lo/ᒳ;
    .locals 2

    .line 223
    new-instance v1, Lo/ᒌ;

    iget-object v0, p0, Lo/ἶ;->uK:Lo/ʎ;

    invoke-direct {v1, v0}, Lo/ᒌ;-><init>(Lo/ʎ;)V

    .line 224
    iget-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    return-object v1
.end method

.method public ᒬ()J
    .locals 5

    .line 162
    const-wide/high16 v2, -0x8000000000000000L

    .line 163
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 164
    iget-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒌ;

    invoke-virtual {v0}, Lo/ᒌ;->ᒬ()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-wide v2
.end method

.method public ᒯ()V
    .locals 1

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ἶ;->uh:Z

    .line 231
    return-void
.end method

.method public Ⅴ()Z
    .locals 2

    .line 136
    iget-boolean v0, p0, Lo/ἶ;->uj:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lo/ἶ;->uh:Z

    if-eqz v0, :cond_2

    .line 137
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 138
    iget-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒌ;

    invoke-virtual {v0}, Lo/ᒌ;->ᒎ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    return v0

    .line 137
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ἶ;->uj:Z

    .line 144
    :cond_2
    iget-boolean v0, p0, Lo/ἶ;->uj:Z

    return v0
.end method

.method public ﭘ(I)Lo/ب;
    .locals 1

    .line 127
    iget-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒌ;

    invoke-virtual {v0}, Lo/ᒌ;->ᒑ()Lo/ب;

    move-result-object v0

    return-object v0
.end method

.method public ﺒ(I)Z
    .locals 1

    .line 201
    invoke-virtual {p0}, Lo/ἶ;->Ⅴ()Z

    move-result v0

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 202
    iget-object v0, p0, Lo/ἶ;->ue:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒌ;

    invoke-virtual {v0}, Lo/ᒌ;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
