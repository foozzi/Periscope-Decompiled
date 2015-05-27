.class Lo/ˡ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ˡ$if;
    }
.end annotation


# static fields
.field private static final ᒃ:Ljava/lang/Object;

.field private static ᓒ:Ljava/lang/reflect/Field;

.field private static ᕪ:Z

.field private static final ᙆ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/ˡ;->ᒃ:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/ˡ;->ᙆ:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static ˊ(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 5

    .line 212
    sget-object v2, Lo/ˡ;->ᒃ:Ljava/lang/Object;

    monitor-enter v2

    .line 213
    :try_start_0
    sget-boolean v0, Lo/ˡ;->ᕪ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 214
    monitor-exit v2

    const/4 v0, 0x0

    return-object v0

    .line 217
    :cond_0
    :try_start_1
    sget-object v0, Lo/ˡ;->ᓒ:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 218
    const-class v0, Landroid/app/Notification;

    const-string v1, "extras"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 219
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    const-string v0, "NotificationCompat"

    const-string v1, "Notification.extras field is not of type Bundle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v0, 0x1

    sput-boolean v0, Lo/ˡ;->ᕪ:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    monitor-exit v2

    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 225
    sput-object v3, Lo/ˡ;->ᓒ:Ljava/lang/reflect/Field;

    .line 227
    :cond_2
    sget-object v0, Lo/ˡ;->ᓒ:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v3, v0

    .line 228
    if-nez v3, :cond_3

    .line 229
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 230
    sget-object v0, Lo/ˡ;->ᓒ:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    :cond_3
    monitor-exit v2

    return-object v3

    .line 233
    :catch_0
    move-exception v3

    .line 234
    const-string v0, "NotificationCompat"

    const-string v1, "Unable to access notification extras"

    :try_start_3
    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    goto :goto_0

    .line 235
    :catch_1
    move-exception v3

    .line 236
    const-string v0, "NotificationCompat"

    const-string v1, "Unable to access notification extras"

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lo/ˡ;->ᕪ:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    monitor-exit v2

    const/4 v0, 0x0

    return-object v0

    .line 240
    :catchall_0
    move-exception v4

    monitor-exit v2

    throw v4
.end method

.method public static ˊ(Lo/ᵢ;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 3

    .line 168
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-interface {p0}, Lo/ᵢ;->ᵢ()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    .line 171
    if-eqz p6, :cond_0

    .line 172
    invoke-virtual {v2, p5}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 174
    :cond_0
    if-eqz p2, :cond_1

    .line 175
    invoke-virtual {v2, p3}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 177
    :cond_1
    return-void
.end method

.method public static ˊ(Lo/ᵢ;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 156
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-interface {p0}, Lo/ᵢ;->ᵢ()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    .line 159
    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {v2, p3}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 162
    :cond_0
    return-void
.end method

.method public static ˊ(Lo/ᵢ;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u1d62;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList<Ljava/lang/CharSequence;>;)V"
        }
    .end annotation

    .line 182
    new-instance v0, Landroid/app/Notification$InboxStyle;

    invoke-interface {p0}, Lo/ᵢ;->ᵢ()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, p1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v2

    .line 184
    if-eqz p2, :cond_0

    .line 185
    invoke-virtual {v2, p3}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 187
    :cond_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object v4, v0

    .line 188
    invoke-virtual {v2, v4}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 189
    goto :goto_0

    .line 190
    :cond_1
    return-void
.end method

.method public static ˋ(Landroid/app/Notification$Builder;Lo/ʳ$if;)Landroid/os/Bundle;
    .locals 4

    .line 258
    invoke-virtual {p1}, Lo/ʳ$if;->getIcon()I

    move-result v0

    invoke-virtual {p1}, Lo/ʳ$if;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lo/ʳ$if;->ﹶ()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 259
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p1}, Lo/ʳ$if;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 260
    invoke-virtual {p1}, Lo/ʳ$if;->ｰ()[Lo/ᐩ$if;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "android.support.remoteInputs"

    invoke-virtual {p1}, Lo/ʳ$if;->ｰ()[Lo/ᐩ$if;

    move-result-object v1

    invoke-static {v1}, Lo/ᑊ;->ˋ([Lo/ᐩ$if;)[Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 264
    :cond_0
    return-object v3
.end method

.method public static ˋ(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Landroid/os/Bundle;>;)Landroid/util/SparseArray<Landroid/os/Bundle;>;"
        }
    .end annotation

    .line 194
    const/4 v1, 0x0

    .line 195
    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 196
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v4, v0

    .line 197
    if-eqz v4, :cond_1

    .line 198
    if-nez v1, :cond_0

    .line 199
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 201
    :cond_0
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_2
    return-object v1
.end method
