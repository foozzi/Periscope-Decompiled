.class final Lo/ʹ;
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
.field final synthetic ˤ:Landroid/view/View;

.field final synthetic ι:Lo/ﹳ$ˊ;

.field final synthetic ৲:Ljava/util/Map;

.field final synthetic ᐢ:Ljava/util/Map;

.field final synthetic ᒻ:Landroid/transition/Transition;

.field final synthetic ᔅ:Ljava/util/ArrayList;

.field final synthetic ᔉ:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lo/ﹳ$ˊ;Ljava/util/Map;Ljava/util/Map;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lo/ʹ;->ˤ:Landroid/view/View;

    iput-object p2, p0, Lo/ʹ;->ι:Lo/ﹳ$ˊ;

    iput-object p3, p0, Lo/ʹ;->৲:Ljava/util/Map;

    iput-object p4, p0, Lo/ʹ;->ᐢ:Ljava/util/Map;

    iput-object p5, p0, Lo/ʹ;->ᒻ:Landroid/transition/Transition;

    iput-object p6, p0, Lo/ʹ;->ᔅ:Ljava/util/ArrayList;

    iput-object p7, p0, Lo/ʹ;->ᔉ:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    .line 117
    iget-object v0, p0, Lo/ʹ;->ˤ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 118
    iget-object v0, p0, Lo/ʹ;->ι:Lo/ﹳ$ˊ;

    invoke-interface {v0}, Lo/ﹳ$ˊ;->getView()Landroid/view/View;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_2

    .line 120
    iget-object v0, p0, Lo/ʹ;->৲:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lo/ʹ;->ᐢ:Ljava/util/Map;

    invoke-static {v0, v2}, Lo/ﹳ;->ˊ(Ljava/util/Map;Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lo/ʹ;->ᐢ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lo/ʹ;->৲:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v0, p0, Lo/ʹ;->৲:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    .line 124
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 125
    iget-object v0, p0, Lo/ʹ;->ᐢ:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v6, v0

    .line 126
    if-eqz v6, :cond_0

    .line 127
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 128
    invoke-virtual {v6, v7}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 130
    :cond_0
    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lo/ʹ;->ᒻ:Landroid/transition/Transition;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lo/ʹ;->ᔅ:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lo/ﹳ;->ˋ(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lo/ʹ;->ᔅ:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/ʹ;->ᐢ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 135
    iget-object v0, p0, Lo/ʹ;->ᔅ:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/ʹ;->ᔉ:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lo/ʹ;->ᒻ:Landroid/transition/Transition;

    iget-object v1, p0, Lo/ʹ;->ᔉ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 137
    iget-object v0, p0, Lo/ʹ;->ᒻ:Landroid/transition/Transition;

    iget-object v1, p0, Lo/ʹ;->ᔅ:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lo/ﹳ;->ˋ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 140
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
