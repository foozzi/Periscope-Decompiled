.class public Lo/abv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abv$1;,
        Lo/abv$if;
    }
.end annotation


# instance fields
.field private final bny:Lo/ot;

.field private final bwR:Lo/aad;

.field private final bwS:Lo/abw;

.field private final bwT:Lo/abs;

.field private bwU:Ljava/lang/String;

.field private bwV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/ot;Lo/aad;Lo/aek$ˊ;Lo/abs;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/abv;->bny:Lo/ot;

    .line 30
    iput-object p2, p0, Lo/abv;->bwR:Lo/aad;

    .line 31
    new-instance v0, Lo/abw;

    invoke-direct {v0, p3, p1}, Lo/abw;-><init>(Lo/aek$ˊ;Lo/ot;)V

    iput-object v0, p0, Lo/abv;->bwS:Lo/abw;

    .line 32
    iput-object p4, p0, Lo/abv;->bwT:Lo/abs;

    .line 33
    invoke-virtual {p0}, Lo/abv;->prepare()V

    .line 34
    return-void
.end method

.method private ˏ(Lo/ant;)V
    .locals 6

    .line 108
    iget-object v0, p0, Lo/abv;->bwT:Lo/abs;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "PubNub: (%s) delivered."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/abs;->log(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lo/abv;->bwS:Lo/abw;

    invoke-virtual {v0, p1}, Lo/abw;->ʼ(Lo/ant;)V

    .line 110
    return-void
.end method


# virtual methods
.method public kill()V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/abv;->bwS:Lo/abw;

    invoke-virtual {v0}, Lo/abw;->kill()V

    .line 45
    iget-object v0, p0, Lo/abv;->bny:Lo/ot;

    invoke-virtual {v0, p0}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public onEventMainThread(Lo/acb;)V
    .locals 6

    .line 56
    iget-object v3, p1, Lo/acb;->bxr:Lo/ant;

    .line 58
    iget-object v0, p0, Lo/abv;->bwR:Lo/aad;

    invoke-virtual {v3}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/aad;->רּ(Ljava/lang/String;)Z

    move-result v4

    .line 59
    if-eqz v4, :cond_0

    .line 60
    const-string v0, "ChatQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping message from blocked user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 65
    :cond_0
    invoke-virtual {v3}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    iget-object v0, v0, Lo/anu;->bOk:Lo/anu$if;

    sget-object v1, Lo/anu$if;->bOp:Lo/anu$if;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/abv;->bwU:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/abv;->bwU:Ljava/lang/String;

    invoke-virtual {v3}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    const-string v0, "ChatQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received broadcast message from non-broadcaster: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 71
    :cond_1
    sget-object v0, Lo/abv$1;->bwW:[I

    iget-object v1, p1, Lo/acb;->bxq:Lo/anu;

    invoke-virtual {v1}, Lo/anu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 74
    :pswitch_0
    iget-object v0, p0, Lo/abv;->bwR:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const-string v0, "ChatQueue"

    const-string v1, "Dropping our own broadcast ended event. "

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lo/abv;->bwT:Lo/abs;

    const-string v1, "PubNub: Message received that was sent by own id."

    invoke-interface {v0, v1}, Lo/abs;->log(Ljava/lang/String;)V

    .line 77
    goto :goto_1

    .line 79
    :cond_2
    iget-object v0, p0, Lo/abv;->bwS:Lo/abw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/abw;->ᓪ(Z)V

    .line 80
    invoke-direct {p0, v3}, Lo/abv;->ˏ(Lo/ant;)V

    .line 81
    goto :goto_1

    .line 88
    :pswitch_1
    iget-object v0, p0, Lo/abv;->bwR:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-virtual {v3}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    invoke-direct {p0, v3}, Lo/abv;->ˏ(Lo/ant;)V

    goto :goto_1

    .line 92
    :cond_3
    const-string v0, "ChatQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not queuing our own event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lo/ant;->Cf()Lo/anu;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    goto :goto_1

    .line 97
    :pswitch_2
    iget-object v0, p0, Lo/abv;->bwT:Lo/abs;

    const-string v1, "PubNub: Received message with type UNKNOWN"

    invoke-interface {v0, v1}, Lo/abs;->log(Ljava/lang/String;)V

    .line 98
    goto :goto_1

    .line 101
    :goto_0
    invoke-direct {p0, v3}, Lo/abv;->ˏ(Lo/ant;)V

    .line 105
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public prepare()V
    .locals 1

    .line 38
    iget-object v0, p0, Lo/abv;->bwS:Lo/abw;

    invoke-virtual {v0}, Lo/abw;->start()V

    .line 39
    iget-object v0, p0, Lo/abv;->bny:Lo/ot;

    invoke-virtual {v0, p0}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public ʽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p2, p0, Lo/abv;->bwV:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lo/abv;->bwU:Ljava/lang/String;

    .line 52
    return-void
.end method
