.class public Lo/om;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final SA:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "in_reply_to_user_id_str"
    .end annotation
.end field

.field public final SB:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "lang"
    .end annotation
.end field

.field public final SC:Lo/oh;
    .annotation runtime Lo/go;
        value = "place"
    .end annotation
.end field

.field public final SD:Z
    .annotation runtime Lo/go;
        value = "possibly_sensitive"
    .end annotation
.end field

.field public final SE:Ljava/lang/Object;
    .annotation runtime Lo/go;
        value = "scopes"
    .end annotation
.end field

.field public final SF:I
    .annotation runtime Lo/go;
        value = "retweet_count"
    .end annotation
.end field

.field public final SG:Z
    .annotation runtime Lo/go;
        value = "retweeted"
    .end annotation
.end field

.field public final SH:Lo/om;
    .annotation runtime Lo/go;
        value = "retweeted_status"
    .end annotation
.end field

.field public final SI:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "source"
    .end annotation
.end field

.field public final SJ:Z
    .annotation runtime Lo/go;
        value = "truncated"
    .end annotation
.end field

.field public final SK:Lo/oo;
    .annotation runtime Lo/go;
        value = "user"
    .end annotation
.end field

.field public final SL:Z
    .annotation runtime Lo/go;
        value = "withheld_copyright"
    .end annotation
.end field

.field public final SM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation

    .annotation runtime Lo/go;
        value = "withheld_in_countries"
    .end annotation
.end field

.field public final SN:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "withheld_scope"
    .end annotation
.end field

.field public final So:Lo/og;
    .annotation runtime Lo/go;
        value = "coordinates"
    .end annotation
.end field

.field public final Sp:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "created_at"
    .end annotation
.end field

.field public final Sq:Ljava/lang/Object;
    .annotation runtime Lo/go;
        value = "current_user_retweet"
    .end annotation
.end field

.field public final Sr:Lo/on;
    .annotation runtime Lo/go;
        value = "entities"
    .end annotation
.end field

.field public final Ss:Ljava/lang/Integer;
    .annotation runtime Lo/go;
        value = "favorite_count"
    .end annotation
.end field

.field public final St:Z
    .annotation runtime Lo/go;
        value = "favorited"
    .end annotation
.end field

.field public final Su:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "filter_level"
    .end annotation
.end field

.field public final Sv:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "id_str"
    .end annotation
.end field

.field public final Sw:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "in_reply_to_screen_name"
    .end annotation
.end field

.field public final Sx:J
    .annotation runtime Lo/go;
        value = "in_reply_to_status_id"
    .end annotation
.end field

.field public final Sy:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "in_reply_to_status_id_str"
    .end annotation
.end field

.field public final Sz:J
    .annotation runtime Lo/go;
        value = "in_reply_to_user_id"
    .end annotation
.end field

.field public final id:J
    .annotation runtime Lo/go;
        value = "id"
    .end annotation
.end field

.field public final zy:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "text"
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 267
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 268
    :cond_0
    instance-of v0, p1, Lo/om;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 269
    :cond_1
    move-object v0, p1

    check-cast v0, Lo/om;

    move-object v4, v0

    .line 270
    iget-wide v0, p0, Lo/om;->id:J

    iget-wide v2, v4, Lo/om;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 275
    iget-wide v0, p0, Lo/om;->id:J

    long-to-int v0, v0

    return v0
.end method
