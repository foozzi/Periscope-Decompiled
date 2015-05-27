.class Landroid/support/v7/widget/RecyclerView$ˍ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cd"
.end annotation


# instance fields
.field final synthetic aB:Landroid/support/v7/widget/RecyclerView;

.field private bA:Z

.field private bx:I

.field private by:I

.field private bz:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private ᐜ:Lo/ⅼ;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 3032
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3023
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->ﺜ()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 3027
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->bz:Z

    .line 3030
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->bA:Z

    .line 3033
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->ﺜ()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ⅼ;->ˊ(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lo/ⅼ;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->ᐜ:Lo/ⅼ;

    .line 3034
    return-void
.end method

.method private ʼ(IIII)I
    .locals 14

    .line 3201
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3202
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 3203
    if-le v3, v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 3204
    :goto_0
    mul-int v0, p3, p3

    mul-int v1, p4, p4

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v6, v0

    .line 3205
    mul-int v0, p1, p1

    mul-int v1, p2, p2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v7, v0

    .line 3206
    if-eqz v5, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    .line 3207
    :goto_1
    div-int/lit8 v9, v8, 0x2

    .line 3208
    int-to-float v0, v7

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, v8

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 3209
    int-to-float v0, v9

    int-to-float v1, v9

    invoke-direct {p0, v10}, Landroid/support/v7/widget/RecyclerView$ˍ;->ˊ(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float v11, v0, v1

    .line 3213
    if-lez v6, :cond_2

    .line 3214
    int-to-float v0, v6

    div-float v0, v11, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v12, v0, 0x4

    goto :goto_3

    .line 3216
    :cond_2
    if-eqz v5, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    int-to-float v13, v0

    .line 3217
    int-to-float v0, v8

    div-float v0, v13, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v12, v0

    .line 3219
    :goto_3
    const/16 v0, 0x7d0

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private ˊ(F)F
    .locals 4

    .line 3195
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 3196
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 3197
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private ᓲ()V
    .locals 1

    .line 3158
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->bA:Z

    .line 3159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->bz:Z

    .line 3160
    return-void
.end method

.method private ᓵ()V
    .locals 1

    .line 3163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->bz:Z

    .line 3164
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->bA:Z

    if-eqz v0, :cond_0

    .line 3165
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˍ;->ᔿ()V

    .line 3167
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .line 3038
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ˍ;->ᓲ()V

    .line 3039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᐝ(Landroid/support/v7/widget/RecyclerView;)V

    .line 3042
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->ᐜ:Lo/ⅼ;

    .line 3043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˏ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ʻ;->aM:Landroid/support/v7/widget/RecyclerView$ˈ;

    .line 3044
    invoke-virtual {v5}, Lo/ⅼ;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3045
    invoke-virtual {v5}, Lo/ⅼ;->getCurrX()I

    move-result v7

    .line 3046
    invoke-virtual {v5}, Lo/ⅼ;->getCurrY()I

    move-result v8

    .line 3047
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->bx:I

    sub-int v9, v7, v0

    .line 3048
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->by:I

    sub-int v10, v8, v0

    .line 3049
    const/4 v11, 0x0

    .line 3050
    const/4 v12, 0x0

    .line 3051
    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->bx:I

    .line 3052
    move-object/from16 v0, p0

    iput v8, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->by:I

    .line 3053
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 3054
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ḷ()V

    .line 3056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˋ(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 3057
    if-eqz v9, :cond_0

    .line 3058
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˏ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    move-object/from16 v2, p0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, v9, v1, v2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v11

    .line 3059
    sub-int v13, v9, v11

    .line 3061
    :cond_0
    if-eqz v10, :cond_1

    .line 3062
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˏ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    move-object/from16 v2, p0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, v10, v1, v2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˋ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v12

    .line 3063
    sub-int v14, v10, v12

    .line 3065
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʼ(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result v15

    .line 3068
    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    .line 3069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lo/ᵇ;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3070
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ᵣ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v18

    .line 3071
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bH:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-eqz v0, :cond_3

    .line 3072
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bH:Landroid/support/v7/widget/RecyclerView$ˑ;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    move-object/from16 v19, v1

    .line 3073
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v20

    .line 3074
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v21

    .line 3075
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v0

    move/from16 v1, v20

    if-ne v1, v0, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v0

    move/from16 v1, v21

    if-eq v1, v0, :cond_3

    .line 3077
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v0, v0, v20

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int v1, v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 3068
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 3085
    :cond_4
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˈ;->ء()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˈ;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->getItemCount()I

    move-result v15

    .line 3088
    if-nez v15, :cond_5

    .line 3089
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˈ;->stop()V

    goto :goto_1

    .line 3090
    :cond_5
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˈ;->ر()I

    move-result v0

    if-lt v0, v15, :cond_6

    .line 3091
    add-int/lit8 v0, v15, -0x1

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView$ˈ;->ᕽ(I)V

    .line 3092
    sub-int v0, v9, v13

    sub-int v1, v10, v14

    invoke-static {v6, v0, v1}, Landroid/support/v7/widget/RecyclerView$ˈ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˈ;II)V

    goto :goto_1

    .line 3094
    :cond_6
    sub-int v0, v9, v13

    sub-int v1, v10, v14

    invoke-static {v6, v0, v1}, Landroid/support/v7/widget/RecyclerView$ˈ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˈ;II)V

    .line 3097
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˋ(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 3098
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ⁱ(Z)V

    .line 3100
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ʽ(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 3103
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lo/ﺑ;->ͺ(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 3105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v9, v10}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3107
    :cond_a
    if-nez v13, :cond_b

    if-eqz v14, :cond_15

    .line 3108
    :cond_b
    invoke-virtual {v5}, Lo/ⅼ;->getCurrVelocity()F

    move-result v0

    float-to-int v15, v0

    .line 3110
    const/16 v16, 0x0

    .line 3111
    if-eq v13, v7, :cond_e

    .line 3112
    if-gez v13, :cond_c

    neg-int v0, v15

    move/from16 v16, v0

    goto :goto_2

    :cond_c
    if-lez v13, :cond_d

    move/from16 v16, v15

    goto :goto_2

    :cond_d
    const/16 v16, 0x0

    .line 3115
    :cond_e
    :goto_2
    const/16 v17, 0x0

    .line 3116
    if-eq v14, v8, :cond_11

    .line 3117
    if-gez v14, :cond_f

    neg-int v0, v15

    move/from16 v17, v0

    goto :goto_3

    :cond_f
    if-lez v14, :cond_10

    move/from16 v17, v15

    goto :goto_3

    :cond_10
    const/16 v17, 0x0

    .line 3120
    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lo/ﺑ;->ͺ(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    .line 3122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->ۥ(II)V

    .line 3124
    :cond_12
    if-nez v16, :cond_13

    if-eq v13, v7, :cond_13

    invoke-virtual {v5}, Lo/ⅼ;->getFinalX()I

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    if-nez v17, :cond_14

    if-eq v14, v8, :cond_14

    invoke-virtual {v5}, Lo/ⅼ;->getFinalY()I

    move-result v0

    if-nez v0, :cond_15

    .line 3126
    :cond_14
    invoke-virtual {v5}, Lo/ⅼ;->abortAnimation()V

    .line 3129
    :cond_15
    if-nez v11, :cond_16

    if-eqz v12, :cond_17

    .line 3130
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v11, v12}, Landroid/support/v7/widget/RecyclerView;->ˋ(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3133
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ͺ(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 3134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 3137
    :cond_18
    if-eqz v10, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˏ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ſ()Z

    move-result v0

    if-eqz v0, :cond_19

    if-ne v12, v10, :cond_19

    const/4 v15, 0x1

    goto :goto_4

    :cond_19
    const/4 v15, 0x0

    .line 3139
    :goto_4
    if-eqz v9, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ˏ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ŗ()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-ne v11, v9, :cond_1a

    const/16 v16, 0x1

    goto :goto_5

    :cond_1a
    const/16 v16, 0x0

    .line 3141
    :goto_5
    if-nez v9, :cond_1b

    if-eqz v10, :cond_1c

    :cond_1b
    if-nez v16, :cond_1c

    if-eqz v15, :cond_1d

    :cond_1c
    const/16 v17, 0x1

    goto :goto_6

    :cond_1d
    const/16 v17, 0x0

    .line 3144
    :goto_6
    invoke-virtual {v5}, Lo/ⅼ;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1e

    if-nez v17, :cond_1f

    .line 3145
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˋ(Landroid/support/v7/widget/RecyclerView;I)V

    goto :goto_7

    .line 3147
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ˍ;->ᔿ()V

    .line 3151
    :cond_20
    :goto_7
    if-eqz v6, :cond_21

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˈ;->ء()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3152
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v6, v0, v1}, Landroid/support/v7/widget/RecyclerView$ˈ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˈ;II)V

    .line 3154
    :cond_21
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ˍ;->ᓵ()V

    .line 3155
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 2

    .line 3187
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$ˍ;->ʻ(IIII)V

    .line 3188
    return-void
.end method

.method public stop()V
    .locals 1

    .line 3238
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3239
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->ᐜ:Lo/ⅼ;

    invoke-virtual {v0}, Lo/ⅼ;->abortAnimation()V

    .line 3240
    return-void
.end method

.method public ʻ(IIII)V
    .locals 1

    .line 3191
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ˍ;->ʼ(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$ˍ;->ʽ(III)V

    .line 3192
    return-void
.end method

.method public ʽ(III)V
    .locals 1

    .line 3223
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->ﺜ()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$ˍ;->ˊ(IIILandroid/view/animation/Interpolator;)V

    .line 3224
    return-void
.end method

.method public ˊ(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .line 3227
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 3228
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 3229
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lo/ⅼ;->ˊ(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lo/ⅼ;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->ᐜ:Lo/ⅼ;

    .line 3231
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˋ(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3232
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->by:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->bx:I

    .line 3233
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->ᐜ:Lo/ⅼ;

    move v3, p1

    move v4, p2

    move v5, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/ⅼ;->startScroll(IIIII)V

    .line 3234
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˍ;->ᔿ()V

    .line 3235
    return-void
.end method

.method public ᒽ(II)V
    .locals 9

    .line 3179
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˋ(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3180
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->by:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->bx:I

    .line 3181
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->ᐜ:Lo/ⅼ;

    move v3, p1

    move v4, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Lo/ⅼ;->fling(IIIIIIII)V

    .line 3183
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˍ;->ᔿ()V

    .line 3184
    return-void
.end method

.method ᔿ()V
    .locals 1

    .line 3170
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->bz:Z

    if-eqz v0, :cond_0

    .line 3171
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->bA:Z

    goto :goto_0

    .line 3173
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3174
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˍ;->aB:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Lo/ﺑ;->ˊ(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3176
    :goto_0
    return-void
.end method
