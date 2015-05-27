.class public abstract Lo/aly;
.super Landroid/text/style/ClickableSpan;
.source ""


# instance fields
.field private ϊ:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 12
    iput p1, p0, Lo/aly;->ϊ:I

    .line 13
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 19
    iget v0, p0, Lo/aly;->ϊ:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 20
    return-void
.end method
