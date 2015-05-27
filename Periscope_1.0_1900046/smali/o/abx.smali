.class public Lo/abx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abx$ˏ;,
        Lo/abx$ˋ;,
        Lo/abx$if;,
        Lo/abx$ˊ;,
        Lo/abx$ˎ;
    }
.end annotation


# static fields
.field private static bxh:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Ljava/lang/String;Lo/kt;>;"
        }
    .end annotation
.end field

.field private static bxi:Ljava/lang/String;

.field private static bxj:Ljava/lang/String;

.field private static bxk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/abx;->bxh:Ljava/util/HashMap;

    return-void
.end method

.method static ī(Ljava/lang/String;)V
    .locals 3

    .line 120
    :try_start_0
    invoke-static {p0}, Lo/abx;->ﺫ(Ljava/lang/String;)Lo/kt;

    move-result-object v0

    new-instance v1, Lo/abx$ˋ;

    invoke-direct {v1, p0}, Lo/abx$ˋ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lo/kt;->ˋ(Ljava/lang/String;Lo/ki;)V
    :try_end_0
    .catch Lo/lh; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v2

    .line 122
    invoke-virtual {v2}, Lo/lh;->printStackTrace()V

    .line 124
    :goto_0
    return-void
.end method

.method public static ʼ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    sput-object p0, Lo/abx;->bxi:Ljava/lang/String;

    .line 52
    sput-object p1, Lo/abx;->bxj:Ljava/lang/String;

    .line 53
    sput-object p2, Lo/abx;->bxk:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static ˊ(Ljava/lang/String;Ljava/lang/String;Lo/acu;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 76
    invoke-static {p0, p1}, Lo/abx;->ᕀ(Ljava/lang/String;Ljava/lang/String;)Lo/kt;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SE-a-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {p0, v2}, Lo/abx;->ᵕ(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/16 v0, 0x1e

    invoke-static {p0, v0}, Lo/abx;->ι(Ljava/lang/String;I)V

    .line 81
    new-instance v3, Lo/fz;

    invoke-direct {v3}, Lo/fz;-><init>()V

    .line 82
    const-string v0, "username"

    invoke-virtual {v3, v0, p5}, Lo/fz;->ʿ(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "display_name"

    invoke-virtual {v3, v0, p6}, Lo/fz;->ʿ(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "id"

    invoke-virtual {v3, v0, p4}, Lo/fz;->ʿ(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "initials"

    invoke-virtual {v3, v0, p7}, Lo/fz;->ʿ(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "participant_index"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lo/fz;->ˊ(Ljava/lang/String;Ljava/lang/Number;)V

    .line 87
    const-string v0, "pub_nub_profile_image"

    invoke-virtual {v3, v0, p8}, Lo/fz;->ʿ(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {p0}, Lo/abx;->ﺫ(Ljava/lang/String;)Lo/kt;

    move-result-object v0

    new-instance v1, Lo/aby;

    invoke-direct {v1, p0, p2, p3}, Lo/aby;-><init>(Ljava/lang/String;Lo/acu;Z)V

    invoke-virtual {v0, p0, v2, v3, v1}, Lo/kt;->ˊ(Ljava/lang/String;Ljava/lang/String;Lo/fz;Lo/ki;)V

    .line 97
    return-void
.end method

.method static ˊ(Ljava/lang/String;Lo/acu;Z)V
    .locals 3

    .line 109
    invoke-static {p0}, Lo/abx;->ﺫ(Ljava/lang/String;)Lo/kt;

    move-result-object v1

    .line 112
    :try_start_0
    new-instance v0, Lo/abx$ˏ;

    invoke-direct {v0, p1, p2}, Lo/abx$ˏ;-><init>(Lo/acu;Z)V

    invoke-virtual {v1, p0, v0}, Lo/kt;->ˊ(Ljava/lang/String;Lo/ki;)V
    :try_end_0
    .catch Lo/lh; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    invoke-virtual {v2}, Lo/lh;->printStackTrace()V

    .line 116
    :goto_0
    return-void
.end method

.method private static ˊ(Ljava/lang/String;Lo/fz;)V
    .locals 2

    .line 180
    invoke-static {p0}, Lo/abx;->ﺫ(Ljava/lang/String;)Lo/kt;

    move-result-object v0

    new-instance v1, Lo/abx$ˎ;

    invoke-direct {v1}, Lo/abx$ˎ;-><init>()V

    invoke-virtual {v0, p0, p1, v1}, Lo/kt;->ˊ(Ljava/lang/String;Lo/fz;Lo/ki;)V

    .line 181
    return-void
.end method

.method public static ˋ(Ljava/lang/String;Lo/ant;)V
    .locals 4

    .line 144
    invoke-virtual {p1}, Lo/ant;->Cg()Ljava/lang/String;

    move-result-object v3

    .line 146
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lo/ada;

    invoke-direct {v0, p0, p1}, Lo/ada;-><init>(Ljava/lang/String;Lo/ant;)V

    new-instance v1, Lo/abz;

    invoke-direct {v1, v3}, Lo/abz;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lo/adb;->sign(Lo/ada;Lretrofit/Callback;)V

    .line 177
    return-void
.end method

.method static synthetic ˋ(Ljava/lang/String;Lo/fz;)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lo/abx;->ˊ(Ljava/lang/String;Lo/fz;)V

    return-void
.end method

.method public static ˎ(Ljava/lang/String;J)V
    .locals 10

    .line 184
    invoke-static {p0}, Lo/abx;->ﺫ(Ljava/lang/String;)Lo/kt;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    new-instance v9, Lo/abx$ˊ;

    const/4 v4, 0x0

    invoke-direct {v9, v4}, Lo/abx$ˊ;-><init>(Lo/aby;)V

    const-wide/16 v4, -0x1

    const/16 v6, 0x64

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v9}, Lo/kt;->ˊ(Ljava/lang/String;JJIZZLo/ki;)V

    .line 186
    return-void
.end method

.method private static ᕀ(Ljava/lang/String;Ljava/lang/String;)Lo/kt;
    .locals 7

    .line 65
    new-instance v0, Lo/kt;

    sget-object v1, Lo/abx;->bxi:Ljava/lang/String;

    sget-object v2, Lo/abx;->bxj:Ljava/lang/String;

    sget-object v3, Lo/abx;->bxk:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/kt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v6, v0

    .line 66
    invoke-virtual {v6, p1}, Lo/kt;->ʵ(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lo/abx;->bxh:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object v6
.end method

.method static ᵕ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 132
    invoke-static {p0}, Lo/abx;->ﺫ(Ljava/lang/String;)Lo/kt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/kt;->ˀ(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static ᵡ(Ljava/lang/String;)V
    .locals 4

    .line 140
    invoke-static {p0}, Lo/abx;->ﺫ(Ljava/lang/String;)Lo/kt;

    move-result-object v0

    new-instance v1, Lo/abx$if;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/abx$if;-><init>(Lo/aby;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v2, v3, v1}, Lo/kt;->ˊ(Ljava/lang/String;ZZLo/ki;)V

    .line 141
    return-void
.end method

.method static ι(Ljava/lang/String;I)V
    .locals 1

    .line 136
    invoke-static {p0}, Lo/abx;->ﺫ(Ljava/lang/String;)Lo/kt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/kt;->ṛ(I)V

    .line 137
    return-void
.end method

.method private static ﺫ(Ljava/lang/String;)Lo/kt;
    .locals 3

    .line 57
    sget-object v0, Lo/abx;->bxh:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/kt;

    move-object v2, v0

    .line 58
    if-nez v2, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Channel not initialized. Did you call init()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-object v2
.end method

.method public static ﻴ(Ljava/lang/String;)V
    .locals 3

    .line 100
    invoke-static {p0}, Lo/anw;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leaving channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {p0}, Lo/abx;->ﺫ(Ljava/lang/String;)Lo/kt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/kt;->ʸ(Ljava/lang/String;)V

    .line 105
    invoke-static {p0}, Lo/abx;->ﺫ(Ljava/lang/String;)Lo/kt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/kt;->unsubscribe(Ljava/lang/String;)V

    .line 106
    return-void
.end method
