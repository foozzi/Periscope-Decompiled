.class final Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CloseButton"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mInnerRadius:F

.field private final mOffset:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:F

.field private final mShadowInnerPaint:Landroid/graphics/Paint;

.field private final mShadowOuterPaint:Landroid/graphics/Paint;

.field private final mStrokeWidth:F

.field final synthetic this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1134
    iput-object p1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->this$1:Lcom/localytics/android/MarketingDialogFragment$MarketingDialog;

    .line 1135
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->setId(I)V

    .line 1138
    const-string v0, "close_button"

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1141
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1143
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1146
    :cond_0
    invoke-virtual {p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1148
    const/high16 v0, 0x41500000    # 13.0f

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterX:F

    .line 1149
    const/high16 v0, 0x41500000    # 13.0f

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterY:F

    .line 1150
    const/high16 v0, 0x41500000    # 13.0f

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mRadius:F

    .line 1151
    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mOffset:F

    .line 1152
    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mStrokeWidth:F

    .line 1153
    iget v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mRadius:F

    iget v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mStrokeWidth:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mInnerRadius:F

    .line 1155
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    .line 1157
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mShadowInnerPaint:Landroid/graphics/Paint;

    .line 1158
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mShadowInnerPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mRadius:F

    sub-float/2addr v2, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1159
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mShadowOuterPaint:Landroid/graphics/Paint;

    .line 1160
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mShadowOuterPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1163
    # getter for: Lcom/localytics/android/MarketingDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/localytics/android/MarketingDialogFragment;->access$1600()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_1

    .line 1165
    const/high16 v7, 0x41f00000    # 30.0f

    goto :goto_0

    .line 1169
    :cond_1
    const/high16 v7, 0x42200000    # 40.0f

    .line 1171
    :goto_0
    mul-float/2addr v7, v6

    .line 1172
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v7, v0

    .line 1173
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v1, v7

    float-to-int v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1176
    const/high16 v0, 0x41d00000    # 26.0f

    mul-float/2addr v0, v6

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x41d00000    # 26.0f

    mul-float/2addr v1, v6

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    .line 1177
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1180
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1181
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1182
    iget v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterX:F

    iget v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterY:F

    iget v2, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mRadius:F

    iget-object v3, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1185
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1186
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1187
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1188
    iget v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterX:F

    iget v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterY:F

    iget v2, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mInnerRadius:F

    iget-object v3, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1191
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40900000    # 4.5f

    mul-float/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1192
    move-object v0, v8

    iget v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterX:F

    iget v2, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mOffset:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterY:F

    iget v3, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mOffset:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterX:F

    iget v4, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mOffset:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterY:F

    iget v5, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mOffset:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1193
    move-object v0, v8

    iget v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterX:F

    iget v2, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mOffset:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterY:F

    iget v3, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mOffset:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterX:F

    iget v4, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mOffset:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterY:F

    iget v5, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mOffset:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1194
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1199
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1201
    invoke-virtual {p0}, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1205
    # getter for: Lcom/localytics/android/MarketingDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/localytics/android/MarketingDialogFragment;->access$1600()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 1207
    # getter for: Lcom/localytics/android/MarketingDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/localytics/android/MarketingDialogFragment;->access$1600()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1208
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    goto :goto_1

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_2

    .line 1213
    # getter for: Lcom/localytics/android/MarketingDialogFragment;->dismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    invoke-static {}, Lcom/localytics/android/MarketingDialogFragment;->access$400()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    move-result-object v0

    sget-object v1, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;->LEFT:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    if-ne v0, v1, :cond_1

    .line 1215
    const/4 v5, 0x0

    .line 1216
    move v7, v4

    goto :goto_0

    .line 1220
    :cond_1
    const/high16 v0, 0x40800000    # 4.0f

    mul-float v5, v0, v4

    .line 1221
    const/high16 v0, 0x40400000    # 3.0f

    mul-float v7, v0, v4

    .line 1223
    :goto_0
    iget v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterX:F

    add-float/2addr v0, v7

    iget v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterY:F

    add-float/2addr v1, v4

    iget v2, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mRadius:F

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mShadowInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1224
    iget v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterX:F

    add-float/2addr v0, v7

    iget v1, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mCenterY:F

    add-float/2addr v1, v4

    iget v2, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mRadius:F

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mShadowOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1225
    iget-object v6, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    .line 1226
    goto :goto_1

    .line 1229
    :cond_2
    return-void

    .line 1231
    :goto_1
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v6, v5, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1232
    return-void
.end method

.method public release()V
    .locals 2

    .line 1236
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/MarketingDialogFragment$MarketingDialog$CloseButton;->mBitmap:Landroid/graphics/Bitmap;

    .line 1241
    :cond_0
    return-void
.end method