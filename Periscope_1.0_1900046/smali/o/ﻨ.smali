.class Lo/ﻨ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ғ:Lo/ﺩ;


# direct methods
.method constructor <init>(Lo/ﺩ;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ˊ(Lo/ﺩ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ˋ(Lo/ﺩ;)Lo/ᒃ;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lo/ᒃ;->setAlpha(I)V

    .line 165
    iget-object v0, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ˋ(Lo/ﺩ;)Lo/ᒃ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᒃ;->start()V

    .line 166
    iget-object v0, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ˎ(Lo/ﺩ;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ˏ(Lo/ﺩ;)Lo/ﺩ$if;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ˏ(Lo/ﺩ;)Lo/ﺩ$if;

    move-result-object v0

    invoke-interface {v0}, Lo/ﺩ$if;->ᕁ()V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ˋ(Lo/ﺩ;)Lo/ᒃ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᒃ;->stop()V

    .line 173
    iget-object v0, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ᐝ(Lo/ﺩ;)Lo/ר;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ר;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lo/ﺩ;->ˊ(Lo/ﺩ;I)V

    .line 176
    iget-object v0, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ʻ(Lo/ﺩ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺩ;->ˊ(Lo/ﺩ;F)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    iget-object v1, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    iget v1, v1, Lo/ﺩ;->ĵ:I

    iget-object v2, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    invoke-static {v2}, Lo/ﺩ;->ʼ(Lo/ﺩ;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lo/ﺩ;->ˊ(Lo/ﺩ;IZ)V

    .line 183
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    iget-object v1, p0, Lo/ﻨ;->ғ:Lo/ﺩ;

    invoke-static {v1}, Lo/ﺩ;->ᐝ(Lo/ﺩ;)Lo/ר;

    move-result-object v1

    invoke-virtual {v1}, Lo/ר;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lo/ﺩ;->ˋ(Lo/ﺩ;I)I

    .line 184
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 158
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 154
    return-void
.end method
