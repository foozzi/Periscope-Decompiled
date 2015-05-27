.class public final Lo/ii;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ii$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/lang/Object;>;"
    }
.end annotation


# static fields
.field public static final LA:Lo/gl;


# instance fields
.field private final gson:Lo/fl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lo/ij;

    invoke-direct {v0}, Lo/ij;-><init>()V

    sput-object v0, Lo/ii;->LA:Lo/gl;

    return-void
.end method

.method private constructor <init>(Lo/fl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/gk;-><init>()V

    .line 51
    iput-object p1, p0, Lo/ii;->gson:Lo/fl;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lo/fl;Lo/ij;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lo/ii;-><init>(Lo/fl;)V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 3

    .line 95
    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    .line 97
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lo/ii;->gson:Lo/fl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/fl;->ᐝ(Ljava/lang/Class;)Lo/gk;

    move-result-object v2

    .line 101
    instance-of v0, v2, Lo/ii;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1}, Lo/kc;->R()Lo/kc;

    .line 103
    invoke-virtual {p1}, Lo/kc;->S()Lo/kc;

    .line 104
    return-void

    .line 107
    :cond_1
    invoke-virtual {v2, p1, p2}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 5

    .line 55
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v2

    .line 56
    sget-object v0, Lo/ii$1;->LP:[I

    invoke-virtual {v2}, Lo/kb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 58
    :pswitch_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Lo/jz;->beginArray()V

    .line 60
    :goto_0
    invoke-virtual {p1}, Lo/jz;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lo/ii;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lo/jz;->endArray()V

    .line 64
    return-object v3

    .line 67
    :pswitch_1
    new-instance v4, Lo/hk;

    invoke-direct {v4}, Lo/hk;-><init>()V

    .line 68
    invoke-virtual {p1}, Lo/jz;->beginObject()V

    .line 69
    :goto_1
    invoke-virtual {p1}, Lo/jz;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p1}, Lo/jz;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lo/ii;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p1}, Lo/jz;->endObject()V

    .line 73
    return-object v4

    .line 76
    :pswitch_2
    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_3
    invoke-virtual {p1}, Lo/jz;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 82
    :pswitch_4
    invoke-virtual {p1}, Lo/jz;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 85
    :pswitch_5
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 89
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
