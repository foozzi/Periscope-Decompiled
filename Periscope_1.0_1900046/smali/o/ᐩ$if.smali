.class public abstract Lo/ᐩ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᐩ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᐩ$if$if;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method protected abstract getAllowFreeFormInput()Z
.end method

.method protected abstract getChoices()[Ljava/lang/CharSequence;
.end method

.method protected abstract getExtras()Landroid/os/Bundle;
.end method

.method protected abstract getLabel()Ljava/lang/CharSequence;
.end method

.method protected abstract getResultKey()Ljava/lang/String;
.end method
