.class Lo/ᴬ$if;
.super Lo/ῑ$ˊ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᴬ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic ﻪ:Lo/ᴬ;


# direct methods
.method public constructor <init>(Lo/ᴬ;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lo/ᴬ$if;->ﻪ:Lo/ᴬ;

    .line 295
    invoke-direct {p0, p1}, Lo/ῑ$ˊ;-><init>(Landroid/view/View;)V

    .line 296
    return-void
.end method


# virtual methods
.method public Ӏ()Lo/ῑ;
    .locals 1

    .line 300
    iget-object v0, p0, Lo/ᴬ$if;->ﻪ:Lo/ᴬ;

    invoke-static {v0}, Lo/ᴬ;->ˊ(Lo/ᴬ;)Lo/ᴬ$ˊ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lo/ᴬ$if;->ﻪ:Lo/ᴬ;

    invoke-static {v0}, Lo/ᴬ;->ˊ(Lo/ᴬ;)Lo/ᴬ$ˊ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᴬ$ˊ;->Ӏ()Lo/ῑ;

    move-result-object v0

    return-object v0

    .line 303
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected ײ()Z
    .locals 3

    .line 309
    iget-object v0, p0, Lo/ᴬ$if;->ﻪ:Lo/ᴬ;

    invoke-static {v0}, Lo/ᴬ;->ˋ(Lo/ᴬ;)Lo/ᵁ$ˊ;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ᴬ$if;->ﻪ:Lo/ᴬ;

    invoke-static {v0}, Lo/ᴬ;->ˋ(Lo/ᴬ;)Lo/ᵁ$ˊ;

    move-result-object v0

    iget-object v1, p0, Lo/ᴬ$if;->ﻪ:Lo/ᴬ;

    invoke-static {v1}, Lo/ᴬ;->ˎ(Lo/ᴬ;)Lo/ᵃ;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ᵁ$ˊ;->ˊ(Lo/ᵃ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lo/ᴬ$if;->Ӏ()Lo/ῑ;

    move-result-object v2

    .line 311
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lo/ῑ;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 313
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected ᑉ()Z
    .locals 2

    .line 318
    invoke-virtual {p0}, Lo/ᴬ$if;->Ӏ()Lo/ῑ;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {v1}, Lo/ῑ;->dismiss()V

    .line 321
    const/4 v0, 0x1

    return v0

    .line 323
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
