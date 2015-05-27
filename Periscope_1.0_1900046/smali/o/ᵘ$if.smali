.class Lo/ᵘ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᵘ$aux;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᵘ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᵘ$if$if;
    }
.end annotation


# instance fields
.field Ĭ:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<Landroid/view/View;Ljava/lang/Runnable;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᵘ$if;->Ĭ:Ljava/util/WeakHashMap;

    .line 292
    return-void
.end method

.method static synthetic ˊ(Lo/ᵘ$if;Lo/ᵘ;Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lo/ᵘ$if;->ˎ(Lo/ᵘ;Landroid/view/View;)V

    return-void
.end method

.method private ˎ(Lo/ᵘ;Landroid/view/View;)V
    .locals 5

    .line 270
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 271
    const/4 v2, 0x0

    .line 272
    instance-of v0, v1, Lo/ﭔ;

    if-eqz v0, :cond_0

    .line 273
    move-object v0, v1

    check-cast v0, Lo/ﭔ;

    move-object v2, v0

    .line 275
    :cond_0
    invoke-static {p1}, Lo/ᵘ;->ˊ(Lo/ᵘ;)Ljava/lang/Runnable;

    move-result-object v3

    .line 276
    invoke-static {p1}, Lo/ᵘ;->ˋ(Lo/ᵘ;)Ljava/lang/Runnable;

    move-result-object v4

    .line 277
    if-eqz v3, :cond_1

    .line 278
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 280
    :cond_1
    if-eqz v2, :cond_2

    .line 281
    invoke-interface {v2, p2}, Lo/ﭔ;->ᵢ(Landroid/view/View;)V

    .line 282
    invoke-interface {v2, p2}, Lo/ﭔ;->ⁱ(Landroid/view/View;)V

    .line 284
    :cond_2
    if-eqz v4, :cond_3

    .line 285
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 287
    :cond_3
    iget-object v0, p0, Lo/ᵘ$if;->Ĭ:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p0, Lo/ᵘ$if;->Ĭ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_4
    return-void
.end method

.method private ˏ(Lo/ᵘ;Landroid/view/View;)V
    .locals 2

    .line 321
    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lo/ᵘ$if;->Ĭ:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lo/ᵘ$if;->Ĭ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    .line 325
    :cond_0
    if-nez v1, :cond_2

    .line 326
    new-instance v1, Lo/ᵘ$if$if;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, p2, v0}, Lo/ᵘ$if$if;-><init>(Lo/ᵘ$if;Lo/ᵘ;Landroid/view/View;Lo/ᵘ$1;)V

    .line 327
    iget-object v0, p0, Lo/ᵘ$if;->Ĭ:Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lo/ᵘ$if;->Ĭ:Ljava/util/WeakHashMap;

    .line 330
    :cond_1
    iget-object v0, p0, Lo/ᵘ$if;->Ĭ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 333
    invoke-virtual {p2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 334
    return-void
.end method

.method private ᵔ(Landroid/view/View;)V
    .locals 2

    .line 311
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lo/ᵘ$if;->Ĭ:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lo/ᵘ$if;->Ĭ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    .line 314
    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 318
    :cond_0
    return-void
.end method


# virtual methods
.method public ˊ(Lo/ᵘ;Landroid/view/View;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lo/ᵘ$if;->ˏ(Lo/ᵘ;Landroid/view/View;)V

    .line 204
    return-void
.end method

.method public ˊ(Lo/ᵘ;Landroid/view/View;F)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lo/ᵘ$if;->ˏ(Lo/ᵘ;Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public ˊ(Lo/ᵘ;Landroid/view/View;J)V
    .locals 0

    .line 83
    return-void
.end method

.method public ˊ(Lo/ᵘ;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 117
    return-void
.end method

.method public ˊ(Lo/ᵘ;Landroid/view/View;Lo/ﭔ;)V
    .locals 1

    .line 261
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 262
    return-void
.end method

.method public ˋ(Lo/ᵘ;Landroid/view/View;)V
    .locals 0

    .line 244
    invoke-direct {p0, p2}, Lo/ᵘ$if;->ᵔ(Landroid/view/View;)V

    .line 245
    invoke-direct {p0, p1, p2}, Lo/ᵘ$if;->ˎ(Lo/ᵘ;Landroid/view/View;)V

    .line 246
    return-void
.end method

.method public ˋ(Lo/ᵘ;Landroid/view/View;F)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lo/ᵘ$if;->ˏ(Lo/ᵘ;Landroid/view/View;)V

    .line 95
    return-void
.end method

.method public ˎ(Lo/ᵘ;Landroid/view/View;F)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lo/ᵘ$if;->ˏ(Lo/ᵘ;Landroid/view/View;)V

    .line 101
    return-void
.end method

.method public ˏ(Lo/ᵘ;Landroid/view/View;F)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Lo/ᵘ$if;->ˏ(Lo/ᵘ;Landroid/view/View;)V

    .line 180
    return-void
.end method

.method public ᐝ(Lo/ᵘ;Landroid/view/View;F)V
    .locals 0

    .line 191
    invoke-direct {p0, p1, p2}, Lo/ᵘ$if;->ˏ(Lo/ᵘ;Landroid/view/View;)V

    .line 192
    return-void
.end method
