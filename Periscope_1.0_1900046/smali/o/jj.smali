.class final Lo/jj;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/util/Locale;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 605
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 605
    move-object v0, p2

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, v0}, Lo/jj;->ˊ(Lo/kc;Ljava/util/Locale;)V

    return-void
.end method

.method public ˊ(Lo/kc;Ljava/util/Locale;)V
    .locals 1

    .line 636
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lo/kc;->ᖮ(Ljava/lang/String;)Lo/kc;

    .line 637
    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 605
    invoke-virtual {p0, p1}, Lo/jj;->ٴ(Lo/jz;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public ٴ(Lo/jz;)Ljava/util/Locale;
    .locals 7

    .line 608
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 609
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 610
    const/4 v0, 0x0

    return-object v0

    .line 612
    :cond_0
    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 613
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v0, "_"

    invoke-direct {v3, v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v4, 0x0

    .line 615
    const/4 v5, 0x0

    .line 616
    const/4 v6, 0x0

    .line 617
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 620
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 623
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 624
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 626
    :cond_3
    if-nez v5, :cond_4

    if-nez v6, :cond_4

    .line 627
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 628
    :cond_4
    if-nez v6, :cond_5

    .line 629
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 631
    :cond_5
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
