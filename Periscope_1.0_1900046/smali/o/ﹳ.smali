.class Lo/ﹳ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﹳ$if;,
        Lo/ﹳ$ˊ;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    return-void
.end method

.method public static ˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 41
    if-eqz p0, :cond_0

    .line 42
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    .line 44
    :cond_0
    return-object p0
.end method

.method public static ˊ(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList<Landroid/view/View;>;Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;Landroid/view/View;)Ljava/lang/Object;"
        }
    .end annotation

    .line 49
    if-eqz p0, :cond_2

    .line 50
    invoke-static {p2, p1}, Lo/ﹳ;->ˊ(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 51
    if-eqz p3, :cond_0

    .line 52
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 54
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const/4 p0, 0x0

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-static {v0, p2}, Lo/ﹳ;->ˋ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 61
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static ˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 9

    .line 151
    const/4 v2, 0x1

    .line 152
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    move-object v3, v0

    .line 153
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    move-object v4, v0

    .line 154
    move-object v0, p2

    check-cast v0, Landroid/transition/Transition;

    move-object v5, v0

    .line 156
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 157
    move v2, p3

    .line 165
    :cond_0
    if-eqz v2, :cond_4

    .line 167
    new-instance v7, Landroid/transition/TransitionSet;

    invoke-direct {v7}, Landroid/transition/TransitionSet;-><init>()V

    .line 168
    if-eqz v3, :cond_1

    .line 169
    invoke-virtual {v7, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 171
    :cond_1
    if-eqz v4, :cond_2

    .line 172
    invoke-virtual {v7, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 174
    :cond_2
    if-eqz v5, :cond_3

    .line 175
    invoke-virtual {v7, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 177
    :cond_3
    move-object v6, v7

    .line 178
    goto :goto_1

    .line 181
    :cond_4
    const/4 v7, 0x0

    .line 182
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 183
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v0, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v7

    goto :goto_0

    .line 187
    :cond_5
    if-eqz v4, :cond_6

    .line 188
    move-object v7, v4

    goto :goto_0

    .line 189
    :cond_6
    if-eqz v3, :cond_7

    .line 190
    move-object v7, v3

    .line 192
    :cond_7
    :goto_0
    if-eqz v5, :cond_9

    .line 193
    new-instance v8, Landroid/transition/TransitionSet;

    invoke-direct {v8}, Landroid/transition/TransitionSet;-><init>()V

    .line 194
    if-eqz v7, :cond_8

    .line 195
    invoke-virtual {v8, v7}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 197
    :cond_8
    invoke-virtual {v8, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 198
    move-object v6, v8

    .line 199
    goto :goto_1

    .line 200
    :cond_9
    move-object v6, v7

    .line 203
    :goto_1
    return-object v6
.end method

.method public static ˊ(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Landroid/transition/Transition;Lo/ﹳ$if;)V
    .locals 1

    .line 210
    if-eqz p0, :cond_0

    .line 211
    new-instance v0, Lo/ՙ;

    invoke-direct {v0, p1}, Lo/ՙ;-><init>(Lo/ﹳ$if;)V

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 223
    :cond_0
    return-void
.end method

.method public static ˊ(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList<Landroid/view/View;>;Ljava/lang/Object;Ljava/util/ArrayList<Landroid/view/View;>;Ljava/lang/Object;Ljava/util/ArrayList<Landroid/view/View;>;Ljava/lang/Object;Ljava/util/ArrayList<Landroid/view/View;>;Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;)V"
        }
    .end annotation

    .line 276
    move-object/from16 v0, p2

    check-cast v0, Landroid/transition/Transition;

    move-object v13, v0

    .line 277
    move-object/from16 v0, p4

    check-cast v0, Landroid/transition/Transition;

    move-object v14, v0

    .line 278
    move-object/from16 v0, p6

    check-cast v0, Landroid/transition/Transition;

    move-object v15, v0

    .line 279
    move-object/from16 v0, p8

    check-cast v0, Landroid/transition/Transition;

    move-object/from16 v16, v0

    .line 280
    if-eqz v16, :cond_0

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lo/י;

    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v14

    move-object/from16 v7, p5

    move-object v8, v15

    move-object/from16 v9, p7

    move-object/from16 v10, p10

    move-object/from16 v11, p9

    move-object/from16 v12, v16

    invoke-direct/range {v1 .. v12}, Lo/י;-><init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 309
    :cond_0
    return-void
.end method

.method public static ˊ(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 2

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    move-object v1, v0

    .line 71
    invoke-static {p0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 72
    return-void
.end method

.method public static ˊ(Ljava/lang/Object;Landroid/view/View;)V
    .locals 3

    .line 75
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    move-object v1, v0

    .line 76
    invoke-static {p1}, Lo/ﹳ;->ˋ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 78
    new-instance v0, Lo/ﾞ;

    invoke-direct {v0, v2}, Lo/ﾞ;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 84
    return-void
.end method

.method public static ˊ(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 2

    .line 65
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    move-object v1, v0

    .line 66
    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 67
    return-void
.end method

.method public static ˊ(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Lo/ﹳ$ˊ;Landroid/view/View;Lo/ﹳ$if;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Lo/\ufe73$\u02ca;Landroid/view/View;Lo/\ufe73$if;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/util/ArrayList<Landroid/view/View;>;Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;Ljava/util/ArrayList<Landroid/view/View;>;)V"
        }
    .end annotation

    .line 103
    if-nez p0, :cond_0

    if-eqz p1, :cond_4

    .line 104
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    move-object v9, v0

    .line 105
    if-eqz v9, :cond_1

    .line 106
    invoke-virtual {v9, p4}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 108
    :cond_1
    if-eqz p1, :cond_2

    .line 109
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    move-object v10, v0

    .line 110
    move-object/from16 v0, p9

    invoke-static {v10, v0}, Lo/ﹳ;->ˋ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 113
    :cond_2
    if-eqz p3, :cond_3

    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lo/ʹ;

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object v6, v9

    move-object/from16 v7, p7

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lo/ʹ;-><init>(Landroid/view/View;Lo/ﹳ$ˊ;Ljava/util/Map;Ljava/util/Map;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 144
    :cond_3
    move-object/from16 v0, p5

    invoke-static {v9, v0}, Lo/ﹳ;->ˊ(Landroid/transition/Transition;Lo/ﹳ$if;)V

    .line 146
    :cond_4
    return-void
.end method

.method public static ˊ(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Object;Ljava/util/ArrayList<Landroid/view/View;>;)V"
        }
    .end annotation

    .line 317
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    move-object v2, v0

    .line 318
    instance-of v0, v2, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_1

    .line 319
    move-object v0, v2

    check-cast v0, Landroid/transition/TransitionSet;

    move-object v3, v0

    .line 320
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v4

    .line 321
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 322
    invoke-virtual {v3, v5}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v6

    .line 323
    invoke-static {v6, p1}, Lo/ﹳ;->ˊ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 321
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 325
    :cond_0
    goto :goto_2

    :cond_1
    invoke-static {v2}, Lo/ﹳ;->ˊ(Landroid/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 326
    invoke-virtual {v2}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v3

    .line 327
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-interface {v3, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    :goto_1
    if-ltz v4, :cond_2

    .line 331
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 330
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 335
    :cond_2
    :goto_2
    return-void
.end method

.method private static ˊ(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/ArrayList<Landroid/view/View;>;Landroid/view/View;)V"
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 236
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 237
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 238
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 242
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 243
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 244
    invoke-static {p0, v4}, Lo/ﹳ;->ˊ(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    :cond_1
    :goto_1
    goto :goto_2

    .line 248
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_3
    :goto_2
    return-void
.end method

.method public static ˊ(Ljava/util/Map;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;Landroid/view/View;)V"
        }
    .end annotation

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_0

    .line 257
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 260
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 261
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 262
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 263
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 264
    invoke-static {p0, v5}, Lo/ﹳ;->ˊ(Ljava/util/Map;Landroid/view/View;)V

    .line 262
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    :cond_1
    return-void
.end method

.method private static ˊ(Landroid/transition/Transition;)Z
    .locals 1

    .line 367
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/ﹳ;->ˊ(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/ﹳ;->ˊ(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/ﹳ;->ˊ(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static ˊ(Ljava/util/List;)Z
    .locals 1

    .line 373
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static ˋ(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .line 226
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 227
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 228
    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 230
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x1

    aget v1, v6, v1

    const/4 v2, 0x0

    aget v2, v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v6, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 231
    return-object v5
.end method

.method public static ˋ(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Object;Ljava/util/ArrayList<Landroid/view/View;>;)V"
        }
    .end annotation

    .line 346
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    move-object v1, v0

    .line 347
    instance-of v0, v1, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_1

    .line 348
    move-object v0, v1

    check-cast v0, Landroid/transition/TransitionSet;

    move-object v2, v0

    .line 349
    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    .line 350
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 351
    invoke-virtual {v2, v4}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v5

    .line 352
    invoke-static {v5, p1}, Lo/ﹳ;->ˋ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 350
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 354
    :cond_0
    goto :goto_2

    :cond_1
    invoke-static {v1}, Lo/ﹳ;->ˊ(Landroid/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 355
    invoke-virtual {v1}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v2

    .line 356
    invoke-static {v2}, Lo/ﹳ;->ˊ(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 359
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 360
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 359
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 364
    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic ˋ(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lo/ﹳ;->ˊ(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method static synthetic ˎ(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .line 35
    invoke-static {p0}, Lo/ﹳ;->ˋ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
