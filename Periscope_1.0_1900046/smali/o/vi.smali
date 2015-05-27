.class public Lo/vi;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/vi$if;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static ˊ(Landroid/app/Application;)V
    .locals 1

    .line 152
    new-instance v0, Lcom/localytics/android/LocalyticsActivityLifecycleCallbacks;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocalyticsActivityLifecycleCallbacks;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 158
    return-void
.end method

.method public static ˊ(Lo/vi$if;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lo/vi$if;->WA:Ljava/lang/String;

    invoke-static {v0}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;)V

    .line 162
    const-string v0, "Analytics"

    iget-object v1, p0, Lo/vi$if;->WA:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static ˊ(Lo/vi$if;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/vi$if;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lo/vi$if;->WA:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 167
    const-string v0, "Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/vi$if;->WA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method
