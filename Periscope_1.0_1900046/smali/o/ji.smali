.class final Lo/ji;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/util/Calendar;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 537
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 537
    move-object v0, p2

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, p1, v0}, Lo/ji;->ˊ(Lo/kc;Ljava/util/Calendar;)V

    return-void
.end method

.method public ˊ(Lo/kc;Ljava/util/Calendar;)V
    .locals 2

    .line 581
    if-nez p2, :cond_0

    .line 582
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    .line 583
    return-void

    .line 585
    :cond_0
    invoke-virtual {p1}, Lo/kc;->R()Lo/kc;

    .line 586
    const-string v0, "year"

    invoke-virtual {p1, v0}, Lo/kc;->ᒢ(Ljava/lang/String;)Lo/kc;

    .line 587
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lo/kc;->ᐩ(J)Lo/kc;

    .line 588
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lo/kc;->ᒢ(Ljava/lang/String;)Lo/kc;

    .line 589
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lo/kc;->ᐩ(J)Lo/kc;

    .line 590
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lo/kc;->ᒢ(Ljava/lang/String;)Lo/kc;

    .line 591
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lo/kc;->ᐩ(J)Lo/kc;

    .line 592
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lo/kc;->ᒢ(Ljava/lang/String;)Lo/kc;

    .line 593
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lo/kc;->ᐩ(J)Lo/kc;

    .line 594
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lo/kc;->ᒢ(Ljava/lang/String;)Lo/kc;

    .line 595
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lo/kc;->ᐩ(J)Lo/kc;

    .line 596
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lo/kc;->ᒢ(Ljava/lang/String;)Lo/kc;

    .line 597
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lo/kc;->ᐩ(J)Lo/kc;

    .line 598
    invoke-virtual {p1}, Lo/kc;->S()Lo/kc;

    .line 599
    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 537
    invoke-virtual {p0, p1}, Lo/ji;->י(Lo/jz;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public י(Lo/jz;)Ljava/util/Calendar;
    .locals 15

    .line 547
    invoke-virtual/range {p1 .. p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 548
    invoke-virtual/range {p1 .. p1}, Lo/jz;->nextNull()V

    .line 549
    const/4 v0, 0x0

    return-object v0

    .line 551
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/jz;->beginObject()V

    .line 552
    const/4 v7, 0x0

    .line 553
    const/4 v8, 0x0

    .line 554
    const/4 v9, 0x0

    .line 555
    const/4 v10, 0x0

    .line 556
    const/4 v11, 0x0

    .line 557
    const/4 v12, 0x0

    .line 558
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->Nw:Lo/kb;

    if-eq v0, v1, :cond_7

    .line 559
    invoke-virtual/range {p1 .. p1}, Lo/jz;->nextName()Ljava/lang/String;

    move-result-object v13

    .line 560
    invoke-virtual/range {p1 .. p1}, Lo/jz;->nextInt()I

    move-result v14

    .line 561
    const-string v0, "year"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    move v7, v14

    goto :goto_1

    .line 563
    :cond_1
    const-string v0, "month"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    move v8, v14

    goto :goto_1

    .line 565
    :cond_2
    const-string v0, "dayOfMonth"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 566
    move v9, v14

    goto :goto_1

    .line 567
    :cond_3
    const-string v0, "hourOfDay"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 568
    move v10, v14

    goto :goto_1

    .line 569
    :cond_4
    const-string v0, "minute"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 570
    move v11, v14

    goto :goto_1

    .line 571
    :cond_5
    const-string v0, "second"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 572
    move v12, v14

    .line 574
    :cond_6
    :goto_1
    goto :goto_0

    .line 575
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lo/jz;->endObject()V

    .line 576
    new-instance v0, Ljava/util/GregorianCalendar;

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object v0
.end method
