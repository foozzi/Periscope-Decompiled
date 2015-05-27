.class final Lo/י;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic י:Landroid/view/View;

.field final synthetic ᐢ:Ljava/util/Map;

.field final synthetic ᒻ:Landroid/transition/Transition;

.field final synthetic ᔅ:Ljava/util/ArrayList;

.field final synthetic ᔉ:Landroid/view/View;

.field final synthetic ᕁ:Landroid/transition/Transition;

.field final synthetic ᕑ:Ljava/util/ArrayList;

.field final synthetic ᕽ:Landroid/transition/Transition;

.field final synthetic ᘁ:Ljava/util/ArrayList;

.field final synthetic ᴵ:Ljava/util/ArrayList;

.field final synthetic ᵄ:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lo/י;->י:Landroid/view/View;

    iput-object p2, p0, Lo/י;->ᒻ:Landroid/transition/Transition;

    iput-object p3, p0, Lo/י;->ᔉ:Landroid/view/View;

    iput-object p4, p0, Lo/י;->ᔅ:Ljava/util/ArrayList;

    iput-object p5, p0, Lo/י;->ᕁ:Landroid/transition/Transition;

    iput-object p6, p0, Lo/י;->ᕑ:Ljava/util/ArrayList;

    iput-object p7, p0, Lo/י;->ᕽ:Landroid/transition/Transition;

    iput-object p8, p0, Lo/י;->ᴵ:Ljava/util/ArrayList;

    iput-object p9, p0, Lo/י;->ᐢ:Ljava/util/Map;

    iput-object p10, p0, Lo/י;->ᘁ:Ljava/util/ArrayList;

    iput-object p11, p0, Lo/י;->ᵄ:Landroid/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .line 284
    iget-object v0, p0, Lo/י;->י:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 285
    iget-object v0, p0, Lo/י;->ᒻ:Landroid/transition/Transition;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lo/י;->ᒻ:Landroid/transition/Transition;

    iget-object v1, p0, Lo/י;->ᔉ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 287
    iget-object v0, p0, Lo/י;->ᒻ:Landroid/transition/Transition;

    iget-object v1, p0, Lo/י;->ᔅ:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lo/ﹳ;->ˊ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lo/י;->ᕁ:Landroid/transition/Transition;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lo/י;->ᕁ:Landroid/transition/Transition;

    iget-object v1, p0, Lo/י;->ᕑ:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lo/ﹳ;->ˊ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 292
    :cond_1
    iget-object v0, p0, Lo/י;->ᕽ:Landroid/transition/Transition;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lo/י;->ᕽ:Landroid/transition/Transition;

    iget-object v1, p0, Lo/י;->ᴵ:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lo/ﹳ;->ˊ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 295
    :cond_2
    iget-object v0, p0, Lo/י;->ᐢ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    .line 296
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v5, v0

    .line 297
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 298
    invoke-virtual {v5, v6}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 299
    goto :goto_0

    .line 300
    :cond_3
    iget-object v0, p0, Lo/י;->ᘁ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 301
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 302
    iget-object v0, p0, Lo/י;->ᵄ:Landroid/transition/Transition;

    iget-object v1, p0, Lo/י;->ᘁ:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 304
    :cond_4
    iget-object v0, p0, Lo/י;->ᵄ:Landroid/transition/Transition;

    iget-object v1, p0, Lo/י;->ᔉ:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 305
    const/4 v0, 0x1

    return v0
.end method
