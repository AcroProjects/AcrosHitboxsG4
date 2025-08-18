# Acro's Hitboxes G4 v1.0

Acro’s Hitboxes G4 aims to streamline the process of generating knockback and damage from collision.  This addon provides custom nodes that allow the user to apply knockback and damage to an object by changing the trajectory and strength of the knockback, allowing the user to visually see the launch angle and strength to reduce the amount of trial and error from traditional knockback methods, collision shapes, and the color of the hitbox.

# Installation

Copy `addons/acro's_hitbox_g4` into your project (final path should be `res://addons/acro's_hitbox_g4`). Open the Godot Editor, go to **Project Settings > Plugins** and enable the **Acro's Hitbox G4** plugin and click **Update**. You can now add a **Hitbox** node to a scene.

# Variables

## shape (Shape2D)
This variable can affect the collision shape of the hitbox

## color (color)
This variable can modify the color of the collision shape of the hitbox

## debug (bool)
This variable enables a "debug mode" that draws launch angle lines and overrides the "frames active" variables

## destroyable (bool)
This variable determines if the hitbox will be destroyed after a certain number of frames

## hitbox_id (int)
This variable stores a hitbox id

## attack_type (int)
This variable stores what type of attack this hitbox is.  Perfect for ENUMS

## hitbox_priority (int)
This variable stores the hitbox's priority

## frames_active (int)
This variable dictates the amount of frames this hitbox is active.  When the hitbox has been active for a set amount of frames

## damage (int)
This variable stores the amount of damage this hitbox produces

## hit_pause (int)
This variable stores the number of hit pause frames (View Demo Project)

## hit_stun (int)
This variable stores the number of hit pause frames

## block_stun (int)
This variable stores the number of hit pause frames

## angle (int)
This variable stores the launch angle of the hitbox

## base_knockback (float)
This variable stores the base knockback of the hitbox

## knockback_scale (float, range of 0.0 - 1.0)
This variable stores the knockback scale of the hitbox

# Methods

## get_launch_vector (int launch_angle, int strength)
Calculates the launch vector to apply knockback manually (with parameters)
Parameters:
 - **launch_angle**: launch_angle
 - **strength**: length and width of the vector

Returns:
 - Vector to apply knockback

# Showcase Video
<a href="https://youtu.be/oEvrNoqFXC0" target="_blank"><img height="137" width="240" src="https://i.imgur.com/ebu0L3R.png" alt="Acro's Hitboxes Showcase" width="150" ></a>
<br>

# Support the project development
<a href="https://ko-fi.com/acroprojects" target="_blank"><img height="137" width="250" src="https://cdn.ko-fi.com/cdn/useruploads/e26b0e38-3146-41f0-aa23-7f522973b5c0.png" alt="Donate On Kofi" width="150" ></a>
<br>

# License

 - This is currently under the MIT, however, I (Austin Molina) have the legal right to change/modify the license if I conclude that the MIT License for **Acro's Hitboxes G4** is being abused by potentially harmful projects (Examples: Games that target a certain group of people, games that are political propaganda, Games that use NFTs or any other high energy used cyrto-tech, etc).

MIT License

Copyright (c) [2025] [Austin Molina]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
