.class Lo/vn$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/vn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic bnJ:Lo/vn;


# direct methods
.method constructor <init>(Lo/vn;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ˋ(Lo/aai;)V
    .locals 8

    .line 509
    sget-object v0, Lo/vn$1;->bnK:[I

    iget-object v1, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 511
    :pswitch_0
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 512
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/ye;

    move-object v5, v0

    .line 513
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v0

    iget-object v1, v5, Lo/ye;->boA:Ltv/periscope/android/api/PsUser;

    invoke-virtual {v0, v1}, Lo/aad;->ˋ(Ltv/periscope/android/api/PsUser;)V

    .line 514
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʼ(Lo/vn;)Lo/zx;

    move-result-object v0

    iget-object v1, v5, Lo/ye;->bpu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/zx;->ヽ(Ljava/lang/String;)V

    .line 515
    goto/16 :goto_2

    .line 519
    :pswitch_1
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 520
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/yo;

    move-object v5, v0

    .line 521
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v0

    iget-object v1, v5, Lo/yo;->boA:Ltv/periscope/android/api/PsUser;

    invoke-virtual {v0, v1}, Lo/aad;->ˋ(Ltv/periscope/android/api/PsUser;)V

    .line 522
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v0

    invoke-virtual {v0}, Lo/aad;->vk()V

    .line 523
    goto/16 :goto_2

    .line 527
    :pswitch_2
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 528
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/ww;

    move-object v5, v0

    .line 529
    iget-object v0, v5, Lo/ww;->boA:Ltv/periscope/android/api/PsUser;

    iget-object v0, v0, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    iget-object v1, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v1}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v1

    invoke-virtual {v1}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v0

    iget-object v1, v5, Lo/ww;->boA:Ltv/periscope/android/api/PsUser;

    invoke-virtual {v0, v1}, Lo/aad;->ˋ(Ltv/periscope/android/api/PsUser;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v0

    iget-object v1, v5, Lo/ww;->boA:Ltv/periscope/android/api/PsUser;

    invoke-virtual {v0, v1}, Lo/aad;->ˊ(Ltv/periscope/android/api/PsUser;)V

    .line 533
    goto/16 :goto_2

    .line 537
    :pswitch_3
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 538
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/wj;

    move-object v5, v0

    .line 539
    iget-object v0, v5, Lo/wj;->bop:Ljava/lang/String;

    iget-object v1, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v1}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v1

    invoke-virtual {v1}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v0

    iget-object v1, v5, Lo/wj;->boq:Ljava/util/List;

    invoke-virtual {v0, v1}, Lo/aad;->ᐨ(Ljava/util/List;)V

    goto :goto_0

    .line 542
    :cond_1
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v0

    sget-object v1, Lo/aah;->bsL:Lo/aah;

    iget-object v2, v5, Lo/wj;->bop:Ljava/lang/String;

    iget-object v3, v5, Lo/wj;->boq:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lo/aad;->ˊ(Lo/aah;Ljava/lang/String;Ljava/util/List;)V

    .line 544
    :goto_0
    goto/16 :goto_2

    .line 548
    :pswitch_4
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 549
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/wj;

    move-object v5, v0

    .line 550
    iget-object v0, v5, Lo/wj;->bop:Ljava/lang/String;

    iget-object v1, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v1}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v1

    invoke-virtual {v1}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v0

    iget-object v1, v5, Lo/wj;->boq:Ljava/util/List;

    invoke-virtual {v0, v1}, Lo/aad;->ﹳ(Ljava/util/List;)V

    goto :goto_1

    .line 553
    :cond_2
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v0

    sget-object v1, Lo/aah;->bsM:Lo/aah;

    iget-object v2, v5, Lo/wj;->bop:Ljava/lang/String;

    iget-object v3, v5, Lo/wj;->boq:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lo/aad;->ˊ(Lo/aah;Ljava/lang/String;Ljava/util/List;)V

    .line 555
    :goto_1
    goto/16 :goto_2

    .line 559
    :pswitch_5
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 561
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    .line 562
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v0

    invoke-virtual {v0, v5}, Lo/aad;->ﾞ(Ljava/util/List;)V

    .line 563
    goto/16 :goto_2

    .line 567
    :pswitch_6
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 569
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    .line 570
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v0

    invoke-virtual {v0}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v6

    .line 571
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v0

    sget-object v1, Lo/aah;->bsR:Lo/aah;

    invoke-virtual {v0, v1, v6, v5}, Lo/aad;->ˊ(Lo/aah;Ljava/lang/String;Ljava/util/List;)V

    .line 572
    goto/16 :goto_2

    .line 576
    :pswitch_7
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 577
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/yc;

    move-object v5, v0

    .line 579
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v6

    .line 580
    invoke-virtual {v6}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v7

    .line 582
    sget-object v0, Lo/aah;->bsP:Lo/aah;

    iget-object v1, v5, Lo/yc;->bpW:Ljava/util/ArrayList;

    invoke-virtual {v6, v0, v7, v1}, Lo/aad;->ˊ(Lo/aah;Ljava/lang/String;Ljava/util/List;)V

    .line 584
    sget-object v0, Lo/aah;->bsO:Lo/aah;

    iget-object v1, v5, Lo/yc;->bpX:Ljava/util/ArrayList;

    invoke-virtual {v6, v0, v7, v1}, Lo/aad;->ˊ(Lo/aah;Ljava/lang/String;Ljava/util/List;)V

    .line 586
    sget-object v0, Lo/aah;->bsQ:Lo/aah;

    iget-object v1, v5, Lo/yc;->bpY:Ljava/util/ArrayList;

    invoke-virtual {v6, v0, v7, v1}, Lo/aad;->ˊ(Lo/aah;Ljava/lang/String;Ljava/util/List;)V

    .line 589
    invoke-virtual {v6}, Lo/aad;->vf()V

    .line 590
    goto/16 :goto_2

    .line 594
    :pswitch_8
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 595
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/vm;

    move-object v5, v0

    .line 596
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ˋ(Lo/vn;)Lo/zp;

    move-result-object v0

    iget-object v1, v5, Lo/vm;->bnr:Lo/xh;

    invoke-virtual {v0, v1}, Lo/zp;->ˋ(Lo/xh;)V

    .line 597
    goto/16 :goto_2

    .line 601
    :pswitch_9
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 603
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    .line 604
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ˋ(Lo/vn;)Lo/zp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lo/zp;->ᐧ(Ljava/util/List;)V

    .line 605
    goto/16 :goto_2

    .line 609
    :pswitch_a
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 610
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/wq;

    move-object v5, v0

    .line 611
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ʻ(Lo/vn;)Lo/aad;

    move-result-object v0

    iget-object v1, v5, Lo/wq;->box:Ljava/lang/String;

    iget-object v2, v5, Lo/wq;->bnh:Ljava/lang/String;

    iget-object v3, v5, Lo/wq;->bos:Ljava/util/ArrayList;

    iget-object v4, v5, Lo/wq;->bot:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 613
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ˋ(Lo/vn;)Lo/zp;

    move-result-object v0

    iget-object v1, v5, Lo/wq;->bnh:Ljava/lang/String;

    iget v2, v5, Lo/wq;->bou:I

    iget v3, v5, Lo/wq;->bov:I

    iget v4, v5, Lo/wq;->bow:I

    invoke-static {v2, v3, v4}, Lo/anf;->ۥ(III)Lo/anf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/zp;->ˊ(Ljava/lang/String;Lo/anf;)V

    .line 616
    goto :goto_2

    .line 620
    :pswitch_b
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 621
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/vx;

    move-object v5, v0

    .line 622
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ˋ(Lo/vn;)Lo/zp;

    move-result-object v0

    iget-object v1, v5, Lo/vx;->bnr:Lo/xh;

    invoke-virtual {v0, v1}, Lo/zp;->ˋ(Lo/xh;)V

    .line 623
    goto :goto_2

    .line 627
    :pswitch_c
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 629
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ˋ(Lo/vn;)Lo/zp;

    move-result-object v0

    iget-object v1, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lo/zp;->ـ(Ljava/util/List;)V

    goto :goto_2

    .line 631
    :cond_3
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ˋ(Lo/vn;)Lo/zp;

    move-result-object v0

    invoke-virtual {v0}, Lo/zp;->uY()V

    .line 636
    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public onEventMainThread(Lo/aai;)V
    .locals 4

    .line 471
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lo/aai;->bsW:Lretrofit/RetrofitError;

    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lo/aai;->bsW:Lretrofit/RetrofitError;

    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_2

    .line 474
    iget-object v0, p1, Lo/aai;->bsW:Lretrofit/RetrofitError;

    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->mimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    :try_start_0
    iget-object v0, p1, Lo/aai;->bsW:Lretrofit/RetrofitError;

    const-class v1, Lo/wh;

    invoke-virtual {v0, v1}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/wh;

    move-object v3, v0

    .line 477
    if-eqz v3, :cond_0

    iget-object v0, v3, Lo/wh;->boo:Lo/wi;

    iget v0, v0, Lo/wi;->code:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 478
    const-string v0, "ApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banned user detected for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", logging out."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    sget-object v1, Lo/aaj;->btM:Lo/aaj;

    invoke-virtual {v0, v1}, Lo/vn;->ˊ(Lo/aaj;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    return-void

    .line 484
    :cond_0
    goto :goto_0

    .line 482
    :catch_0
    move-exception v3

    .line 487
    :cond_1
    :goto_0
    const-string v0, "ApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unauthorized detected for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", logging out."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    sget-object v1, Lo/aaj;->btL:Lo/aaj;

    invoke-virtual {v0, v1}, Lo/vn;->ˊ(Lo/aaj;)V

    .line 489
    return-void

    .line 492
    :cond_2
    invoke-direct {p0, p1}, Lo/vn$if;->ˋ(Lo/aai;)V

    .line 495
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ˎ(Lo/vn;)Lo/ot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 496
    return-void
.end method

.method public onEventMainThread(Lo/aam;)V
    .locals 4

    .line 500
    iget-object v0, p0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ᐝ(Lo/vn;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/vp;

    invoke-direct {v1, p0, p1}, Lo/vp;-><init>(Lo/vn$if;Lo/aam;)V

    iget-object v2, p1, Lo/aam;->buh:Lo/vq;

    invoke-virtual {v2}, Lo/vq;->ub()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 506
    return-void
.end method
