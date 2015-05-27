.class public Lo/xh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/xh$if;
    }
.end annotation


# instance fields
.field public Sg:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "country"
    .end annotation
.end field

.field public Sp:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "created_at"
    .end annotation
.end field

.field public Tk:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "profile_image_url"
    .end annotation
.end field

.field public YW:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "status"
    .end annotation
.end field

.field public boD:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "updated_at"
    .end annotation
.end field

.field public boE:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "user_display_name"
    .end annotation
.end field

.field public boF:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "state"
    .end annotation
.end field

.field public boG:Z
    .annotation runtime Lo/go;
        value = "is_locked"
    .end annotation
.end field

.field public boH:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "start"
    .end annotation
.end field

.field public boI:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "end"
    .end annotation
.end field

.field public boJ:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "ping"
    .end annotation
.end field

.field public boK:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "timedout"
    .end annotation
.end field

.field public boL:Z
    .annotation runtime Lo/go;
        value = "has_location"
    .end annotation
.end field

.field public boM:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "city"
    .end annotation
.end field

.field public boN:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "country_state"
    .end annotation
.end field

.field public boO:D
    .annotation runtime Lo/go;
        value = "ip_lat"
    .end annotation
.end field

.field public boP:D
    .annotation runtime Lo/go;
        value = "ip_lng"
    .end annotation
.end field

.field public boQ:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "image_url"
    .end annotation
.end field

.field public boR:I
    .annotation runtime Lo/go;
        value = "n_watching"
    .end annotation
.end field

.field public boS:I
    .annotation runtime Lo/go;
        value = "n_web_watching"
    .end annotation
.end field

.field public boT:Z
    .annotation runtime Lo/go;
        value = "available_for_replay"
    .end annotation
.end field

.field public boU:Z
    .annotation runtime Lo/go;
        value = "featured"
    .end annotation
.end field

.field public boV:Z
    .annotation runtime Lo/go;
        value = "is_trusted"
    .end annotation
.end field

.field public boW:J
    .annotation runtime Lo/go;
        value = "sort_score"
    .end annotation
.end field

.field public transient boX:Z

.field private transient boY:J

.field private transient boZ:Lo/xh$if;

.field public className:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "class_name"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lo/go;
        value = "height"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "id"
    .end annotation
.end field

.field private transient mLocation:Ljava/lang/String;

.field public nD:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "user_id"
    .end annotation
.end field

.field public width:I
    .annotation runtime Lo/go;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 2

    .line 165
    iget-object v0, p0, Lo/xh;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 166
    iget-object v0, p0, Lo/xh;->boM:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/xh;->boN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/xh;->Sg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/xh;->boM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/xh;->boN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/xh;->Sg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/xh;->mLocation:Ljava/lang/String;

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lo/xh;->boM:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/xh;->Sg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/xh;->boM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/xh;->Sg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/xh;->mLocation:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lo/xh;->Sg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lo/xh;->Sg:Ljava/lang/String;

    iput-object v0, p0, Lo/xh;->mLocation:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lo/xh;->mLocation:Ljava/lang/String;

    .line 176
    :cond_3
    :goto_0
    iget-object v0, p0, Lo/xh;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lo/xh;->YW:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lo/xh;->YW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ud()J
    .locals 4

    .line 116
    iget-wide v0, p0, Lo/xh;->boY:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lo/xh;->Sp:Ljava/lang/String;

    invoke-static {v0}, Lo/akn;->ᔥ(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/xh;->boY:J

    .line 119
    :cond_0
    iget-wide v0, p0, Lo/xh;->boY:J

    return-wide v0
.end method

.method public ue()J
    .locals 2

    .line 123
    iget-object v0, p0, Lo/xh;->boH:Ljava/lang/String;

    invoke-static {v0}, Lo/akn;->ᔥ(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public uf()J
    .locals 2

    .line 127
    iget-object v0, p0, Lo/xh;->boI:Ljava/lang/String;

    invoke-static {v0}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lo/xh;->boI:Ljava/lang/String;

    invoke-static {v0}, Lo/akn;->ᔥ(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 130
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public ug()Lo/xh$if;
    .locals 3

    .line 135
    iget-object v0, p0, Lo/xh;->boZ:Lo/xh$if;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lo/xh;->boZ:Lo/xh$if;

    return-object v0

    .line 139
    :cond_0
    iget-object v1, p0, Lo/xh;->boF:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "NOT_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v0, "PUBLISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "RUNNING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "TIMED_OUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "ENDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 141
    :pswitch_0
    sget-object v0, Lo/xh$if;->bpa:Lo/xh$if;

    iput-object v0, p0, Lo/xh;->boZ:Lo/xh$if;

    .line 142
    goto :goto_1

    .line 145
    :pswitch_1
    sget-object v0, Lo/xh$if;->bpb:Lo/xh$if;

    iput-object v0, p0, Lo/xh;->boZ:Lo/xh$if;

    .line 146
    goto :goto_1

    .line 149
    :pswitch_2
    sget-object v0, Lo/xh$if;->bpc:Lo/xh$if;

    iput-object v0, p0, Lo/xh;->boZ:Lo/xh$if;

    .line 150
    goto :goto_1

    .line 153
    :pswitch_3
    sget-object v0, Lo/xh$if;->bpd:Lo/xh$if;

    iput-object v0, p0, Lo/xh;->boZ:Lo/xh$if;

    .line 154
    goto :goto_1

    .line 157
    :pswitch_4
    sget-object v0, Lo/xh$if;->bpe:Lo/xh$if;

    iput-object v0, p0, Lo/xh;->boZ:Lo/xh$if;

    .line 161
    :goto_1
    iget-object v0, p0, Lo/xh;->boZ:Lo/xh$if;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x78c55e61 -> :sswitch_2
        -0x576cf1fa -> :sswitch_3
        -0x52ecc12b -> :sswitch_0
        -0x3a24e32 -> :sswitch_1
        0x3f0d29a -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public uh()Z
    .locals 2

    .line 180
    invoke-virtual {p0}, Lo/xh;->ug()Lo/xh$if;

    move-result-object v0

    sget-object v1, Lo/xh$if;->bpc:Lo/xh$if;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ui()I
    .locals 2

    .line 189
    iget v0, p0, Lo/xh;->boR:I

    iget v1, p0, Lo/xh;->boS:I

    add-int/2addr v0, v1

    return v0
.end method

.method public ﮈ()Z
    .locals 2

    .line 184
    invoke-virtual {p0}, Lo/xh;->ug()Lo/xh$if;

    move-result-object v1

    .line 185
    sget-object v0, Lo/xh$if;->bpe:Lo/xh$if;

    if-eq v1, v0, :cond_0

    sget-object v0, Lo/xh$if;->bpd:Lo/xh$if;

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
