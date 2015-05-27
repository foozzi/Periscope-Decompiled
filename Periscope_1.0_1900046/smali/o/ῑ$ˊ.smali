.class public abstract Lo/ῑ$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ῑ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ῑ$ˊ$ˊ;,
        Lo/ῑ$ˊ$if;
    }
.end annotation


# instance fields
.field private final A:[I

.field private final p:F

.field private final q:I

.field private final r:I

.field private final s:Landroid/view/View;

.field private t:Ljava/lang/Runnable;

.field private u:Ljava/lang/Runnable;

.field private v:Z

.field private z:Z

.field private ઽ:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lo/ῑ$ˊ;->A:[I

    .line 1248
    iput-object p1, p0, Lo/ῑ$ˊ;->s:Landroid/view/View;

    .line 1249
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lo/ῑ$ˊ;->p:F

    .line 1250
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lo/ῑ$ˊ;->q:I

    .line 1252
    iget v0, p0, Lo/ῑ$ˊ;->q:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/ῑ$ˊ;->r:I

    .line 1253
    return-void
.end method

.method private ʽ(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1333
    iget-object v3, p0, Lo/ῑ$ˊ;->s:Landroid/view/View;

    .line 1334
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1335
    const/4 v0, 0x0

    return v0

    .line 1338
    :cond_0
    invoke-static {p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v4

    .line 1339
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 1341
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lo/ῑ$ˊ;->ઽ:I

    .line 1342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ῑ$ˊ;->z:Z

    .line 1344
    iget-object v0, p0, Lo/ῑ$ˊ;->t:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 1345
    new-instance v0, Lo/ῑ$ˊ$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ῑ$ˊ$if;-><init>(Lo/ῑ$ˊ;Lo/‿;)V

    iput-object v0, p0, Lo/ῑ$ˊ;->t:Ljava/lang/Runnable;

    .line 1347
    :cond_1
    iget-object v0, p0, Lo/ῑ$ˊ;->t:Ljava/lang/Runnable;

    iget v1, p0, Lo/ῑ$ˊ;->q:I

    int-to-long v1, v1

    invoke-virtual {v3, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1348
    iget-object v0, p0, Lo/ῑ$ˊ;->u:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 1349
    new-instance v0, Lo/ῑ$ˊ$ˊ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ῑ$ˊ$ˊ;-><init>(Lo/ῑ$ˊ;Lo/‿;)V

    iput-object v0, p0, Lo/ῑ$ˊ;->u:Ljava/lang/Runnable;

    .line 1351
    :cond_2
    iget-object v0, p0, Lo/ῑ$ˊ;->u:Ljava/lang/Runnable;

    iget v1, p0, Lo/ῑ$ˊ;->r:I

    int-to-long v1, v1

    invoke-virtual {v3, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1352
    goto :goto_0

    .line 1354
    :pswitch_1
    iget v0, p0, Lo/ῑ$ˊ;->ઽ:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1355
    if-ltz v5, :cond_4

    .line 1356
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 1357
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1358
    iget v0, p0, Lo/ῑ$ˊ;->p:F

    invoke-static {v3, v6, v7, v0}, Lo/ῑ$ˊ;->ˊ(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1359
    invoke-direct {p0}, Lo/ῑ$ˊ;->ᓐ()V

    .line 1362
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1363
    const/4 v0, 0x1

    return v0

    .line 1365
    :cond_3
    goto :goto_0

    .line 1369
    :pswitch_2
    invoke-direct {p0}, Lo/ῑ$ˊ;->ᓐ()V

    .line 1373
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic ˊ(Lo/ῑ$ˊ;)Landroid/view/View;
    .locals 1

    .line 1214
    iget-object v0, p0, Lo/ῑ$ˊ;->s:Landroid/view/View;

    return-object v0
.end method

.method private static ˊ(Landroid/view/View;FFF)Z
    .locals 2

    .line 1449
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ˊ(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1459
    iget-object v2, p0, Lo/ῑ$ˊ;->A:[I

    .line 1460
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1461
    const/4 v0, 0x0

    aget v0, v2, v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v2, v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1462
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic ˋ(Lo/ῑ$ˊ;)V
    .locals 0

    .line 1214
    invoke-direct {p0}, Lo/ῑ$ˊ;->ᓭ()V

    return-void
.end method

.method private ˋ(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1470
    iget-object v2, p0, Lo/ῑ$ˊ;->A:[I

    .line 1471
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1472
    const/4 v0, 0x0

    aget v0, v2, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v2, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1473
    const/4 v0, 0x1

    return v0
.end method

.method private ͺ(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1420
    iget-object v1, p0, Lo/ῑ$ˊ;->s:Landroid/view/View;

    .line 1421
    invoke-virtual {p0}, Lo/ῑ$ˊ;->Ӏ()Lo/ῑ;

    move-result-object v2

    .line 1422
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lo/ῑ;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1423
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1426
    :cond_1
    invoke-static {v2}, Lo/ῑ;->ˊ(Lo/ῑ;)Lo/ῑ$if;

    move-result-object v3

    .line 1427
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lo/ῑ$if;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1428
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1432
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 1433
    invoke-direct {p0, v1, v4}, Lo/ῑ$ˊ;->ˋ(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1434
    invoke-direct {p0, v3, v4}, Lo/ῑ$ˊ;->ˊ(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1437
    iget v0, p0, Lo/ῑ$ˊ;->ઽ:I

    invoke-virtual {v3, v4, v0}, Lo/ῑ$if;->ʻ(Landroid/view/MotionEvent;I)Z

    move-result v5

    .line 1438
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 1441
    invoke-static {p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v6

    .line 1442
    const/4 v0, 0x1

    if-eq v6, v0, :cond_4

    const/4 v0, 0x3

    if-eq v6, v0, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    .line 1445
    :goto_0
    if-eqz v5, :cond_5

    if-eqz v7, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private ᓐ()V
    .locals 2

    .line 1377
    iget-object v0, p0, Lo/ῑ$ˊ;->u:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lo/ῑ$ˊ;->s:Landroid/view/View;

    iget-object v1, p0, Lo/ῑ$ˊ;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1381
    :cond_0
    iget-object v0, p0, Lo/ῑ$ˊ;->t:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1382
    iget-object v0, p0, Lo/ῑ$ˊ;->s:Landroid/view/View;

    iget-object v1, p0, Lo/ῑ$ˊ;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1384
    :cond_1
    return-void
.end method

.method private ᓭ()V
    .locals 12

    .line 1387
    invoke-direct {p0}, Lo/ῑ$ˊ;->ᓐ()V

    .line 1389
    iget-object v8, p0, Lo/ῑ$ˊ;->s:Landroid/view/View;

    .line 1390
    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1393
    :cond_0
    return-void

    .line 1396
    :cond_1
    invoke-virtual {p0}, Lo/ῑ$ˊ;->ײ()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1397
    return-void

    .line 1401
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1405
    move-wide v0, v9

    move-wide v2, v9

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 1406
    invoke-virtual {v8, v11}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1407
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 1409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ῑ$ˊ;->v:Z

    .line 1410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ῑ$ˊ;->z:Z

    .line 1411
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1269
    iget-boolean v8, p0, Lo/ῑ$ˊ;->v:Z

    .line 1271
    if-eqz v8, :cond_3

    .line 1272
    iget-boolean v0, p0, Lo/ῑ$ˊ;->z:Z

    if-eqz v0, :cond_0

    .line 1276
    invoke-direct {p0, p2}, Lo/ῑ$ˊ;->ͺ(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_2

    .line 1278
    :cond_0
    invoke-direct {p0, p2}, Lo/ῑ$ˊ;->ͺ(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/ῑ$ˊ;->ᑉ()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    goto :goto_2

    .line 1281
    :cond_3
    invoke-direct {p0, p2}, Lo/ῑ$ˊ;->ʽ(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lo/ῑ$ˊ;->ײ()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 1283
    :goto_1
    if-eqz v9, :cond_5

    .line 1285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1286
    move-wide v0, v10

    move-wide v2, v10

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 1288
    iget-object v0, p0, Lo/ῑ$ˊ;->s:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1289
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 1293
    :cond_5
    :goto_2
    iput-boolean v9, p0, Lo/ῑ$ˊ;->v:Z

    .line 1294
    if-nez v9, :cond_6

    if-eqz v8, :cond_7

    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public abstract Ӏ()Lo/ῑ;
.end method

.method protected ײ()Z
    .locals 2

    .line 1305
    invoke-virtual {p0}, Lo/ῑ$ˊ;->Ӏ()Lo/ῑ;

    move-result-object v1

    .line 1306
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/ῑ;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1307
    invoke-virtual {v1}, Lo/ῑ;->show()V

    .line 1309
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected ᑉ()Z
    .locals 2

    .line 1319
    invoke-virtual {p0}, Lo/ῑ$ˊ;->Ӏ()Lo/ῑ;

    move-result-object v1

    .line 1320
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/ῑ;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {v1}, Lo/ῑ;->dismiss()V

    .line 1323
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
